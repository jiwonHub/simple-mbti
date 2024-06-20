// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mbti_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MbtiModelImpl _$$MbtiModelImplFromJson(Map<String, dynamic> json) =>
    _$MbtiModelImpl(
      question: json['question'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      mbti: (json['mbti'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MbtiModelImplToJson(_$MbtiModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'options': instance.options,
      'mbti': instance.mbti,
    };
