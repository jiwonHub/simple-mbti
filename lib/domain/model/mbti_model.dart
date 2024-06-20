import 'package:freezed_annotation/freezed_annotation.dart';

part 'mbti_model.freezed.dart';

part 'mbti_model.g.dart';

@freezed
class MbtiModel with _$MbtiModel {
  const factory MbtiModel({
    required String question,
    required List<String> options,
    required List<String> mbti,
  }) = _MbtiModel;

  factory MbtiModel.fromJson(Map<String, Object?> json) => _$MbtiModelFromJson(json);
}