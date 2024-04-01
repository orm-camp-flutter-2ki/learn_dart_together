// sealed class Result<T, E> {
//   factory Result.success(T data) = Success<T, E>;
//
//   factory Result.error(E error) = Error<T, E>;
// }
//
// class Success<T, E> implements Result<T, E> {
//   final T data;
//
//   Success(this.data);
// }
//
// class Error<T, E> implements Result<T, E> {
//   final E error;
//
//   Error(this.error);
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;

  const factory Result.error(String e) = Error;
}
