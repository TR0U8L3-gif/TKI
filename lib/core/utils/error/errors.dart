import 'package:flutter/widgets.dart';
import 'package:tki_app/core/extensions/string_extension.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

({String message, String description}) questionSetImageLoadError(
    QuestionSet questionSet, Object error) {
  const message =
      'Loading QuestionSet image failed\nCheck if the image url is correct';
  var description =
      'QuestionSet [title: ${questionSet.title}, questions length: ${questionSet.questions.length}, imageUrl: ${questionSet.imageUrl?.short()}]\n\n';
  description += '${error.runtimeType} [';
  if (error is NetworkImageLoadException) {
    description += 'status code: ${error.statusCode}, host: ${error.uri.host}';
  } else {
    description += '$error';
  }
  description += ']';
  return (message: message, description: description);
}
