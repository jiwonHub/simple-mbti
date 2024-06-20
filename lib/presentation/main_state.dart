import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<String> questions,
    @Default([]) List<List<String>> options,
    @Default([]) List<List<String>> mbtis,
    @Default('') String result,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}