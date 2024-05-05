// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageStateImpl _$$LanguageStateImplFromJson(Map<String, dynamic> json) =>
    _$LanguageStateImpl(
      status: $enumDecode(_$LoadingStatusEnumMap, json['status']),
      currentLanguage:
          const LocaleConverter().fromJson(json['currentLanguage'] as String),
    );

Map<String, dynamic> _$$LanguageStateImplToJson(_$LanguageStateImpl instance) =>
    <String, dynamic>{
      'status': _$LoadingStatusEnumMap[instance.status]!,
      'currentLanguage':
          const LocaleConverter().toJson(instance.currentLanguage),
    };

const _$LoadingStatusEnumMap = {
  LoadingStatus.loading: 'loading',
  LoadingStatus.loaded: 'loaded',
};
