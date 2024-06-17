import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_history_event.dart';
part 'assessment_history_state.dart';
part 'assessment_history_bloc.freezed.dart';

class AssessmentHistoryBloc extends Bloc<AssessmentHistoryEvent, AssessmentHistoryState> {
  AssessmentHistoryBloc() : super(_Initial()) {
    on<AssessmentHistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
