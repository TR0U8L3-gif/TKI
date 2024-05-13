// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionSetImpl _$$QuestionSetImplFromJson(Map<String, dynamic> json) =>
    _$QuestionSetImpl(
      language: json['language'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String?,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionSetImplToJson(_$QuestionSetImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'questions': instance.questions,
    };
