import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tki_assessment_event.dart';
part 'tki_assessment_state.dart';
part 'tki_assessment_bloc.freezed.dart';

class TkiAssessmentBloc extends Bloc<TkiAssessmentEvent, TkiAssessmentState> {
  TkiAssessmentBloc() : super(_Initial()) {
    on<TkiAssessmentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
