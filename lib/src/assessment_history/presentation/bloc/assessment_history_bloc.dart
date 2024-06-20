import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';
import 'package:tki_app/src/assessment_history/domain/use_cases/delete_assessment_history.dart';
import 'package:tki_app/src/assessment_history/domain/use_cases/get_assessments_history_from_memory.dart';

part 'assessment_history_event.dart';
part 'assessment_history_state.dart';
part 'assessment_history_bloc.freezed.dart';

@injectable
class AssessmentHistoryBloc
    extends Bloc<AssessmentHistoryEvent, AssessmentHistoryState> {
  AssessmentHistoryBloc({
    required GetAssessmentsHistoryFromMemory getAssessmentHistoryList,
    required DeleteAssessmentHistory deleteAssessmentHistory,
  })  : _getAssessmentHistoryList = getAssessmentHistoryList,
        _deleteAssessmentHistory = deleteAssessmentHistory,
        super(const InitialState()) {
    on<GetFromMemoryEvent>(_getFromMemoryHandler);
    on<DeleteAssessmentEvent>(_deleteHandler);
  }

  final GetAssessmentsHistoryFromMemory _getAssessmentHistoryList;
  final DeleteAssessmentHistory _deleteAssessmentHistory;
  final List<AssessmentHistory> _assessmentHistoryList = [];

  FutureOr<void> _getFromMemoryHandler(
    GetFromMemoryEvent event,
    Emitter<AssessmentHistoryState> emit,
  ) async {
     _emitLoadingState(emitter: emit);

    final result = await _getAssessmentHistoryList(NoParams());

    result.fold(
      (failure) => _emitErrorState(emitter: emit, failure: failure),
      (assessmentHistoryList) => _emitLoadedState(
        emitter: emit,
        assessmentHistoryList: assessmentHistoryList,
      ),
    );
  }

  FutureOr<void> _deleteHandler(
    DeleteAssessmentEvent event,
    Emitter<AssessmentHistoryState> emit,
  ) async {
    final index = event.index;
    final assessmentHistory = event.assessmentHistory;
    final isDeleted = await _deleteAssessmentHistory(
        DeleteAssessmentHistoryParams(index: index, assessmentHistory: assessmentHistory));
    isDeleted.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (success) {
        _assessmentHistoryList.removeAt(index);
        _emitSuccessState(
          emitter: emit,
          success: success,
        );
      },
    );
    _emitLoadedState(emitter: emit);
  }

  void _emitLoadingState({
    required Emitter<AssessmentHistoryState> emitter,
  }) {
    emitter(
      IdleState(
        isLoading: true,
        assessmentHistoryList: _assessmentHistoryList,
      ),
    );
  }

  void _emitLoadedState({
    required Emitter<AssessmentHistoryState> emitter,
    List<AssessmentHistory>? assessmentHistoryList,
  }) {
    if (assessmentHistoryList != null) {
      _assessmentHistoryList.clear();
      _assessmentHistoryList.addAll(List.from(assessmentHistoryList));
    }

    emitter(
      IdleState(
        isLoading: false,
        assessmentHistoryList: _assessmentHistoryList,
      ),
    );
  }

  void _emitErrorState({
    required Emitter<AssessmentHistoryState> emitter,
    required Failure failure,
  }) {
    final previousState = state is IdleState
        ? state
        : IdleState(
            isLoading: false,
            assessmentHistoryList: _assessmentHistoryList,
          );

    emitter(
      ErrorState(
        previousState: (previousState as IdleState).copyWith(isLoading: false),
        failure: failure,
      ),
    );
  }

  void _emitSuccessState({
    required Emitter<AssessmentHistoryState> emitter,
    required Success success,
  }) {
    final previousState = state is IdleState
        ? state
        : IdleState(
            isLoading: false,
            assessmentHistoryList: _assessmentHistoryList,
          );

    emitter(
      SuccessState(
        previousState: (previousState as IdleState).copyWith(isLoading: false),
        success: success,
      ),
    );
  }
}
