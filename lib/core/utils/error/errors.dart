
import 'package:flutter/widgets.dart';
import 'package:tki_app/core/extensions/string_extension.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

String questionSetImageLoadErrorMessage(QuestionSet questionSet, Object error){
  var result = 'Loading QuestionSet image failed\nCheck if the image url is correct\n\n';
  result += 'QuestionSet [title: ${questionSet.title}, questions length: ${questionSet.questions.length}, imageUrl: ${questionSet.imageUrl?.short()}]\n\n';
  result += '${error.runtimeType} [';
  if(error is NetworkImageLoadException){
    result += 'status code: ${error.statusCode}, host: ${error.uri.host}';
  } else {
    result += '$error';
  } 
  result += ']';
  return result;
}