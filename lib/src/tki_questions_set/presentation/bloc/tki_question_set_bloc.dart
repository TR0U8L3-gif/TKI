import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/core/utils/error/failures.dart';
import 'package:tki_app/core/utils/error/success.dart';
import 'package:tki_app/core/utils/use_case/use_case.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/delete_question_set.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/get_question_sets_from_fixture.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/get_question_set_from_file.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/get_question_sets_from_memory.dart';
import 'package:tki_app/src/tki_questions_set/domain/use_cases/save_question_set.dart';

part 'tki_question_set_event.dart';
part 'tki_question_set_state.dart';
part 'tki_question_set_bloc.freezed.dart';

@injectable
class TkiQuestionSetBloc
    extends Bloc<TkiQuestionSetEvent, TkiQuestionSetState> {
  TkiQuestionSetBloc({
    required GetQuestionSetsFromFixtures getQuestionSetsFromFixtures,
    required GetQuestionSetFromFile getQuestionSetFromFile,
    required GetQuestionSetsFromMemory getQuestionSetsFromMemory,
    required SaveQuestionSet saveQuestionSet,
    required DeleteQuestionSet deleteQuestionSet,
  })  : _getQuestionSetsFromFixtures = getQuestionSetsFromFixtures,
        _getQuestionSetFromFile = getQuestionSetFromFile,
        _getQuestionSetsFromMemory = getQuestionSetsFromMemory,
        _saveQuestionSet = saveQuestionSet,
        _deleteQuestionSet = deleteQuestionSet,
        super(const InitialState()) {
    on<GetAllEvent>(_getAllHandler<GetAllEvent>);
    on<GetFromFixturesEvent>(_fixtureHandler<GetFromFixturesEvent>);
    on<GetFromMemoryEvent>(_memoryHandler<GetFromMemoryEvent>);
    on<GetFromFileEvent>(_fileHandler<GetFromFileEvent>);
    on<_SaveQuestionSetEvent>(_saveHandler<_SaveQuestionSetEvent>);
    on<DeleteQuestionSetEvent>(_deleteHandler<DeleteQuestionSetEvent>);
  }

  final GetQuestionSetsFromFixtures _getQuestionSetsFromFixtures;
  final GetQuestionSetFromFile _getQuestionSetFromFile;
  final GetQuestionSetsFromMemory _getQuestionSetsFromMemory;
  final SaveQuestionSet _saveQuestionSet;
  final DeleteQuestionSet _deleteQuestionSet;
  final List<QuestionSet> _questionSetsLocal = [];
  final List<QuestionSet> _questionSetsRemote = [];

  FutureOr<void> _getAllHandler<E>(
    E event,
    Emitter<TkiQuestionSetState> emit,
  ) async {
    _emitLoadingState(
      emitter: emit,
      isLoadingLocal: true,
      isLoadingRemote: true,
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
        isLoadingRemote: true,
      ),
    );
    final result2 = await _getQuestionSetsFromMemory(NoParams());
    result2.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (questionSets) => _emitLoadedState(
        emitter: emit,
        questionSetsRemote: questionSets,
      ),
    );
  }

  FutureOr<void> _fixtureHandler<E>(
    E event,
    Emitter<TkiQuestionSetState> emit,
  ) async {
    _emitLoadingState(
      emitter: emit,
      isLoadingLocal: true,
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

  FutureOr<void> _memoryHandler<E>(
    E event,
    Emitter<TkiQuestionSetState> emit,
  ) async {
    _emitLoadingState(
      emitter: emit,
      isLoadingRemote: true,
    );
    final result = await _getQuestionSetsFromMemory(NoParams());
    result.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (questionSets) => _emitLoadedState(
        emitter: emit,
        questionSetsRemote: questionSets,
      ),
    );
  }

  FutureOr<void> _fileHandler<E>(
      E event, Emitter<TkiQuestionSetState> emit) async {
    _emitLoadingState(
      emitter: emit,
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
      (questionSet) {
        _emitLoadedState(
          emitter: emit,
          questionSetsRemote: List.from(_questionSetsRemote)..add(questionSet),
        );
        add(_SaveQuestionSetEvent(questionSet));
      },
    );
  }

  FutureOr<void> _saveHandler<E>(
    E event,
    Emitter<TkiQuestionSetState> emit,
  ) async {
    final questionSet = (event as _SaveQuestionSetEvent).questionSet;
    final isSaved = await _saveQuestionSet(SaveQuestionSetParams(questionSet: questionSet));
    isSaved.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (success) => _emitSuccessState(
        emitter: emit,
        success: success,
      ),
    );
    _emitLoadedState(emitter: emit);
  }

  FutureOr<void> _deleteHandler<E>(
    E event,
    Emitter<TkiQuestionSetState> emit,
  ) async {
    final index = (event as DeleteQuestionSetEvent).index;
    final questionSet = (event as DeleteQuestionSetEvent).questionSet;
    final isDeleted = await _deleteQuestionSet(DeleteQuestionSetParams(index: index, questionSet: questionSet));
    isDeleted.fold(
      (failure) {
        _emitErrorState(
          emitter: emit,
          failure: failure,
        );
      },
      (success) => _emitSuccessState(
        emitter: emit,
        success: success,
      ),
    );
    _emitLoadedState(emitter: emit);
  }

  void _emitLoadingState({
    required Emitter<TkiQuestionSetState> emitter,
    bool isLoadingLocal = false,
    bool isLoadingRemote = false,
  }) {
    var loadingLocal = isLoadingLocal;
    var loadingRemote = isLoadingRemote;
    

    if(state is IdleState) {
      if(!isLoadingLocal){
        loadingLocal = (state as IdleState).isLoadingLocal;
      }
      if(!isLoadingRemote){
        loadingRemote = (state as IdleState).isLoadingRemote;
      }
    }


    emitter(
      IdleState(
        isLoadingLocal: loadingLocal,
        isLoadingRemote: loadingRemote,
        questionSetsLocal: _questionSetsLocal,
        questionSetsRemote: _questionSetsRemote,
      ),
    );
  }

  void _emitLoadedState({
    required Emitter<TkiQuestionSetState> emitter,
    List<QuestionSet>? questionSetsLocal,
    List<QuestionSet>? questionSetsRemote,
    bool isLoadingLocal = false,
    bool isLoadingRemote = false,
  }) {
    if (questionSetsLocal != null) {
      _questionSetsLocal.clear();
      _questionSetsLocal.addAll(List.from(questionSetsLocal));
    }

    if (questionSetsRemote != null) {
      _questionSetsRemote.clear();
      _questionSetsRemote.addAll(List.from(questionSetsRemote));
    }

    emitter(
      IdleState(
        isLoadingLocal: isLoadingLocal,
        isLoadingRemote: isLoadingRemote,
        questionSetsLocal: _questionSetsLocal,
        questionSetsRemote: _questionSetsRemote,
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

  void _emitSuccessState({
    required Emitter<TkiQuestionSetState> emitter,
    required Success success,
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
      SuccessState(
        previousState: (previousState as IdleState)
            .copyWith(isLoadingLocal: false, isLoadingRemote: false),
        success: success,
      ),
    );
  }
}
