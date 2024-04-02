// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizAnswerImpl _$$QuizAnswerImplFromJson(Map<String, dynamic> json) =>
    _$QuizAnswerImpl(
      answer: json['text'] as String,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$QuizAnswerImplToJson(_$QuizAnswerImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'score': instance.score,
    };
