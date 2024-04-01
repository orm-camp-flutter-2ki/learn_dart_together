import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_response.freezed.dart';

@freezed
sealed class PhotoResult<T> with _$PhotoResult<T> {
  const factory PhotoResult.success(T data) = Success;
  const factory PhotoResult.error(String e) = Error;
}
