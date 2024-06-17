// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssessmentHistoryImpl _$$AssessmentHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentHistoryImpl(
      title: json['title'] as String,
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      collaborating: (json['collaborating'] as num).toInt(),
      competing: (json['competing'] as num).toInt(),
      accommodating: (json['accommodating'] as num).toInt(),
      avoiding: (json['avoiding'] as num).toInt(),
      compromising: (json['compromising'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      questionSet:
          QuestionSet.fromJson(json['questionSet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AssessmentHistoryImplToJson(
        _$AssessmentHistoryImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'collaborating': instance.collaborating,
      'competing': instance.competing,
      'accommodating': instance.accommodating,
      'avoiding': instance.avoiding,
      'compromising': instance.compromising,
      'score': instance.score,
      'questionSet': instance.questionSet,
    };
