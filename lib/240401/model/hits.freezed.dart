// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return _Hits.fromJson(json);
}

/// @nodoc
mixin _$Hits {
  String get tags => throw _privateConstructorUsedError;
  String get previewURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitsCopyWith<Hits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsCopyWith<$Res> {
  factory $HitsCopyWith(Hits value, $Res Function(Hits) then) =
      _$HitsCopyWithImpl<$Res, Hits>;
  @useResult
  $Res call({String tags, String previewURL});
}

/// @nodoc
class _$HitsCopyWithImpl<$Res, $Val extends Hits>
    implements $HitsCopyWith<$Res> {
  _$HitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? previewURL = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      previewURL: null == previewURL
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitsImplCopyWith<$Res> implements $HitsCopyWith<$Res> {
  factory _$$HitsImplCopyWith(
          _$HitsImpl value, $Res Function(_$HitsImpl) then) =
      __$$HitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tags, String previewURL});
}

/// @nodoc
class __$$HitsImplCopyWithImpl<$Res>
    extends _$HitsCopyWithImpl<$Res, _$HitsImpl>
    implements _$$HitsImplCopyWith<$Res> {
  __$$HitsImplCopyWithImpl(_$HitsImpl _value, $Res Function(_$HitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? previewURL = null,
  }) {
    return _then(_$HitsImpl(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      previewURL: null == previewURL
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitsImpl implements _Hits {
  const _$HitsImpl({required this.tags, required this.previewURL});

  factory _$HitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitsImplFromJson(json);

  @override
  final String tags;
  @override
  final String previewURL;

  @override
  String toString() {
    return 'Hits(tags: $tags, previewURL: $previewURL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitsImpl &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.previewURL, previewURL) ||
                other.previewURL == previewURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tags, previewURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitsImplCopyWith<_$HitsImpl> get copyWith =>
      __$$HitsImplCopyWithImpl<_$HitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitsImplToJson(
      this,
    );
  }
}

abstract class _Hits implements Hits {
  const factory _Hits(
      {required final String tags,
      required final String previewURL}) = _$HitsImpl;

  factory _Hits.fromJson(Map<String, dynamic> json) = _$HitsImpl.fromJson;

  @override
  String get tags;
  @override
  String get previewURL;
  @override
  @JsonKey(ignore: true)
  _$$HitsImplCopyWith<_$HitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
