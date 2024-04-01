import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_respone.freezed.dart';

@freezed
sealed class PhotoRespone<T> with _$PhotoRespone<T> {
  const factory PhotoRespone.success(T data) = Success;

  const factory PhotoRespone.error(String e) = Error;
}
