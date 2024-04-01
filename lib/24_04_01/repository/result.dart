import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success<T>;
  const factory Result.error(Exception e) = Error<T>;
}

// Result 패턴을 위한 클래스 파일