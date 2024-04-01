import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  // const factory Result.error(Exception e) = Error;
  const factory Result.argumentError(Exception e) = ArgumentError;
  const factory Result.networkError(Exception e) = NetworkError;
}

