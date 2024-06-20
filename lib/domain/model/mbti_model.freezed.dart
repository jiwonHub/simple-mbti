// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mbti_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MbtiModel _$MbtiModelFromJson(Map<String, dynamic> json) {
  return _MbtiModel.fromJson(json);
}

/// @nodoc
mixin _$MbtiModel {
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  List<String> get mbti => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MbtiModelCopyWith<MbtiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MbtiModelCopyWith<$Res> {
  factory $MbtiModelCopyWith(MbtiModel value, $Res Function(MbtiModel) then) =
      _$MbtiModelCopyWithImpl<$Res, MbtiModel>;
  @useResult
  $Res call({String question, List<String> options, List<String> mbti});
}

/// @nodoc
class _$MbtiModelCopyWithImpl<$Res, $Val extends MbtiModel>
    implements $MbtiModelCopyWith<$Res> {
  _$MbtiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? mbti = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mbti: null == mbti
          ? _value.mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MbtiModelImplCopyWith<$Res>
    implements $MbtiModelCopyWith<$Res> {
  factory _$$MbtiModelImplCopyWith(
          _$MbtiModelImpl value, $Res Function(_$MbtiModelImpl) then) =
      __$$MbtiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, List<String> options, List<String> mbti});
}

/// @nodoc
class __$$MbtiModelImplCopyWithImpl<$Res>
    extends _$MbtiModelCopyWithImpl<$Res, _$MbtiModelImpl>
    implements _$$MbtiModelImplCopyWith<$Res> {
  __$$MbtiModelImplCopyWithImpl(
      _$MbtiModelImpl _value, $Res Function(_$MbtiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? mbti = null,
  }) {
    return _then(_$MbtiModelImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mbti: null == mbti
          ? _value._mbti
          : mbti // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MbtiModelImpl implements _MbtiModel {
  const _$MbtiModelImpl(
      {required this.question,
      required final List<String> options,
      required final List<String> mbti})
      : _options = options,
        _mbti = mbti;

  factory _$MbtiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MbtiModelImplFromJson(json);

  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final List<String> _mbti;
  @override
  List<String> get mbti {
    if (_mbti is EqualUnmodifiableListView) return _mbti;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mbti);
  }

  @override
  String toString() {
    return 'MbtiModel(question: $question, options: $options, mbti: $mbti)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MbtiModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other._mbti, _mbti));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_mbti));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MbtiModelImplCopyWith<_$MbtiModelImpl> get copyWith =>
      __$$MbtiModelImplCopyWithImpl<_$MbtiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MbtiModelImplToJson(
      this,
    );
  }
}

abstract class _MbtiModel implements MbtiModel {
  const factory _MbtiModel(
      {required final String question,
      required final List<String> options,
      required final List<String> mbti}) = _$MbtiModelImpl;

  factory _MbtiModel.fromJson(Map<String, dynamic> json) =
      _$MbtiModelImpl.fromJson;

  @override
  String get question;
  @override
  List<String> get options;
  @override
  List<String> get mbti;
  @override
  @JsonKey(ignore: true)
  _$$MbtiModelImplCopyWith<_$MbtiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
