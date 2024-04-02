// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  int get total => throw _privateConstructorUsedError;
  int get totalHits => throw _privateConstructorUsedError;
  List<Photo> get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({int total, int totalHits, List<Photo> hits});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalHits = null,
    Object? hits = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int totalHits, List<Photo> hits});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalHits = null,
    Object? hits = null,
  }) {
    return _then(_$ImageImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {required this.total,
      required this.totalHits,
      required final List<Photo> hits})
      : _hits = hits;

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final int total;
  @override
  final int totalHits;
  final List<Photo> _hits;
  @override
  List<Photo> get hits {
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  String toString() {
    return 'Image(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required final int total,
      required final int totalHits,
      required final List<Photo> hits}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  int get total;
  @override
  int get totalHits;
  @override
  List<Photo> get hits;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
