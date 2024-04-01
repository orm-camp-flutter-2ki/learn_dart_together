// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception e) argumentError,
    required TResult Function(Exception e) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Exception e)? argumentError,
    TResult? Function(Exception e)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception e)? argumentError,
    TResult Function(Exception e)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(ArgumentError<T> value) argumentError,
    required TResult Function(NetworkError<T> value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(ArgumentError<T> value)? argumentError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(ArgumentError<T> value)? argumentError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception e) argumentError,
    required TResult Function(Exception e) networkError,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Exception e)? argumentError,
    TResult? Function(Exception e)? networkError,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception e)? argumentError,
    TResult Function(Exception e)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(ArgumentError<T> value) argumentError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(ArgumentError<T> value)? argumentError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(ArgumentError<T> value)? argumentError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements Result<T> {
  const factory Success(final T data) = _$SuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArgumentErrorImplCopyWith<T, $Res> {
  factory _$$ArgumentErrorImplCopyWith(_$ArgumentErrorImpl<T> value,
          $Res Function(_$ArgumentErrorImpl<T>) then) =
      __$$ArgumentErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$ArgumentErrorImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ArgumentErrorImpl<T>>
    implements _$$ArgumentErrorImplCopyWith<T, $Res> {
  __$$ArgumentErrorImplCopyWithImpl(_$ArgumentErrorImpl<T> _value,
      $Res Function(_$ArgumentErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ArgumentErrorImpl<T>(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ArgumentErrorImpl<T> implements ArgumentError<T> {
  const _$ArgumentErrorImpl(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'Result<$T>.argumentError(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArgumentErrorImpl<T> &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArgumentErrorImplCopyWith<T, _$ArgumentErrorImpl<T>> get copyWith =>
      __$$ArgumentErrorImplCopyWithImpl<T, _$ArgumentErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception e) argumentError,
    required TResult Function(Exception e) networkError,
  }) {
    return argumentError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Exception e)? argumentError,
    TResult? Function(Exception e)? networkError,
  }) {
    return argumentError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception e)? argumentError,
    TResult Function(Exception e)? networkError,
    required TResult orElse(),
  }) {
    if (argumentError != null) {
      return argumentError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(ArgumentError<T> value) argumentError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return argumentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(ArgumentError<T> value)? argumentError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return argumentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(ArgumentError<T> value)? argumentError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (argumentError != null) {
      return argumentError(this);
    }
    return orElse();
  }
}

abstract class ArgumentError<T> implements Result<T> {
  const factory ArgumentError(final Exception e) = _$ArgumentErrorImpl<T>;

  Exception get e;
  @JsonKey(ignore: true)
  _$$ArgumentErrorImplCopyWith<T, _$ArgumentErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<T, $Res> {
  factory _$$NetworkErrorImplCopyWith(_$NetworkErrorImpl<T> value,
          $Res Function(_$NetworkErrorImpl<T>) then) =
      __$$NetworkErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$NetworkErrorImpl<T>>
    implements _$$NetworkErrorImplCopyWith<T, $Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl<T> _value, $Res Function(_$NetworkErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$NetworkErrorImpl<T>(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl<T> implements NetworkError<T> {
  const _$NetworkErrorImpl(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'Result<$T>.networkError(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl<T> &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<T, _$NetworkErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception e) argumentError,
    required TResult Function(Exception e) networkError,
  }) {
    return networkError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Exception e)? argumentError,
    TResult? Function(Exception e)? networkError,
  }) {
    return networkError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception e)? argumentError,
    TResult Function(Exception e)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(ArgumentError<T> value) argumentError,
    required TResult Function(NetworkError<T> value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(ArgumentError<T> value)? argumentError,
    TResult? Function(NetworkError<T> value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(ArgumentError<T> value)? argumentError,
    TResult Function(NetworkError<T> value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError<T> implements Result<T> {
  const factory NetworkError(final Exception e) = _$NetworkErrorImpl<T>;

  Exception get e;
  @JsonKey(ignore: true)
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
