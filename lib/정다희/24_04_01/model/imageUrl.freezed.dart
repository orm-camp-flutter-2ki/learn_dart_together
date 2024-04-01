// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'imageUrl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageUrl _$ImageUrlFromJson(Map<String, dynamic> json) {
  return _ImageUrl.fromJson(json);
}

/// @nodoc
mixin _$ImageUrl {
  String get pageUrl => throw _privateConstructorUsedError;
  String get webformatUrl => throw _privateConstructorUsedError;
  String get largeImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlCopyWith<ImageUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlCopyWith<$Res> {
  factory $ImageUrlCopyWith(ImageUrl value, $Res Function(ImageUrl) then) =
      _$ImageUrlCopyWithImpl<$Res, ImageUrl>;
  @useResult
  $Res call({String pageUrl, String webformatUrl, String largeImageUrl});
}

/// @nodoc
class _$ImageUrlCopyWithImpl<$Res, $Val extends ImageUrl>
    implements $ImageUrlCopyWith<$Res> {
  _$ImageUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageUrl = null,
    Object? webformatUrl = null,
    Object? largeImageUrl = null,
  }) {
    return _then(_value.copyWith(
      pageUrl: null == pageUrl
          ? _value.pageUrl
          : pageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      webformatUrl: null == webformatUrl
          ? _value.webformatUrl
          : webformatUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeImageUrl: null == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlImplCopyWith<$Res>
    implements $ImageUrlCopyWith<$Res> {
  factory _$$ImageUrlImplCopyWith(
          _$ImageUrlImpl value, $Res Function(_$ImageUrlImpl) then) =
      __$$ImageUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pageUrl, String webformatUrl, String largeImageUrl});
}

/// @nodoc
class __$$ImageUrlImplCopyWithImpl<$Res>
    extends _$ImageUrlCopyWithImpl<$Res, _$ImageUrlImpl>
    implements _$$ImageUrlImplCopyWith<$Res> {
  __$$ImageUrlImplCopyWithImpl(
      _$ImageUrlImpl _value, $Res Function(_$ImageUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageUrl = null,
    Object? webformatUrl = null,
    Object? largeImageUrl = null,
  }) {
    return _then(_$ImageUrlImpl(
      pageUrl: null == pageUrl
          ? _value.pageUrl
          : pageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      webformatUrl: null == webformatUrl
          ? _value.webformatUrl
          : webformatUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeImageUrl: null == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlImpl implements _ImageUrl {
  const _$ImageUrlImpl(
      {required this.pageUrl,
      required this.webformatUrl,
      required this.largeImageUrl});

  factory _$ImageUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlImplFromJson(json);

  @override
  final String pageUrl;
  @override
  final String webformatUrl;
  @override
  final String largeImageUrl;

  @override
  String toString() {
    return 'ImageUrl(pageUrl: $pageUrl, webformatUrl: $webformatUrl, largeImageUrl: $largeImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlImpl &&
            (identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl) &&
            (identical(other.webformatUrl, webformatUrl) ||
                other.webformatUrl == webformatUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pageUrl, webformatUrl, largeImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlImplCopyWith<_$ImageUrlImpl> get copyWith =>
      __$$ImageUrlImplCopyWithImpl<_$ImageUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlImplToJson(
      this,
    );
  }
}

abstract class _ImageUrl implements ImageUrl {
  const factory _ImageUrl(
      {required final String pageUrl,
      required final String webformatUrl,
      required final String largeImageUrl}) = _$ImageUrlImpl;

  factory _ImageUrl.fromJson(Map<String, dynamic> json) =
      _$ImageUrlImpl.fromJson;

  @override
  String get pageUrl;
  @override
  String get webformatUrl;
  @override
  String get largeImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrlImplCopyWith<_$ImageUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
