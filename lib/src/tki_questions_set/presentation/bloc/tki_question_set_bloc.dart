import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/get_question_sets_from_fixture.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/get_question_set_from_file.dart';

part 'tki_question_set_event.dart';
part 'tki_question_set_state.dart';
part 'tki_question_set_bloc.freezed.dart';

@injectable
class TkiQuestionSetBloc
    extends Bloc<TkiQuestionSetEvent, TkiQuestionSetState> {
  TkiQuestionSetBloc({
    required GetQuestionSetsFromFixtures getQuestionSetsFromFixtures,
    required GetQuestionSetFromFile getQuestionSetFromFile,
  })  : _getQuestionSetsFromFixtures = getQuestionSetsFromFixtures,
        _getQuestionSetFromFile = getQuestionSetFromFile,
        super(const InitialState()) {
    on<GetFromFixturesEvent>(_fixtureHandler<GetFromFixturesEvent>);
    on<GetFromDeviceEvent>(_deviceHandler<GetFromDeviceEvent>);
    on<GetFromFileEvent>(_fileHandler<GetFromFileEvent>);
  }

  final GetQuestionSetsFromFixtures _getQuestionSetsFromFixtures;
  final GetQuestionSetFromFile _getQuestionSetFromFile;
  final List<QuestionSet> _questionSetsLocal = [];
  final List<QuestionSet> _questionSetsRemote = [];

  FutureOr<void> _fixtureHandler<E>(
    E event,
    Emitter<TkiQuestionSetState> emit,
  ) async {
    _emitLoadingState(
      emitter: emit,
      isLoadingLocal: true,
      isLoadingRemote: false,
    );
    final result = await _getQuestionSetsFromFixtures(NoParams());
    result.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (questionSets) => _emitLoadedState(
        emitter: emit,
        questionSetsLocal: questionSets,
      ),
    );
  }

  FutureOr<void> _deviceHandler<E>(
      E event, Emitter<TkiQuestionSetState> emit) {}

  FutureOr<void> _fileHandler<E>(
      E event, Emitter<TkiQuestionSetState> emit) async {
    _emitLoadingState(
      emitter: emit,
      isLoadingLocal: false,
      isLoadingRemote: true,
    );
    final result = await _getQuestionSetFromFile(NoParams());
    result.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (questionSet) => _emitLoadedState(
        emitter: emit,
        questionSetsRemote: List.from(_questionSetsRemote)..add(questionSet),
      ),
    );
  }

  void _emitLoadingState({
    required Emitter<TkiQuestionSetState> emitter,
    bool isLoadingLocal = true,
    bool isLoadingRemote = true,
  }) {
    emitter(
      IdleState(
        isLoadingLocal: isLoadingLocal,
        isLoadingRemote: isLoadingRemote,
        questionSetsLocal: _questionSetsLocal,
        questionSetsRemote: _questionSetsRemote,
      ),
    );
  }

  void _emitLoadedState({
    required Emitter<TkiQuestionSetState> emitter,
    List<QuestionSet>? questionSetsLocal,
    List<QuestionSet>? questionSetsRemote,
  }) {
    if (questionSetsLocal != null) {
      _questionSetsLocal.clear();
      _questionSetsLocal.addAll(questionSetsLocal);
    }

    if (questionSetsRemote != null) {
      _questionSetsRemote.clear();
      _questionSetsRemote.addAll(questionSetsRemote);
    }

    emitter(
      IdleState(
        isLoadingLocal: false,
        isLoadingRemote: false,
        questionSetsLocal: questionSetsLocal ?? _questionSetsLocal,
        questionSetsRemote: questionSetsRemote ?? _questionSetsRemote,
      ),
    );
  }

  void _emitErrorState({
    required Emitter<TkiQuestionSetState> emitter,
    required Failure failure,
  }) {
    final previousState = state is IdleState
        ? state
        : IdleState(
            isLoadingLocal: false,
            isLoadingRemote: false,
            questionSetsLocal: _questionSetsLocal,
            questionSetsRemote: _questionSetsRemote,
          );

    emitter(
      ErrorState(
        previousState: (previousState as IdleState)
            .copyWith(isLoadingLocal: false, isLoadingRemote: false),
        failure: failure,
      ),
    );
  }
}
