import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_ver_2.freezed.dart';

@freezed
sealed class ResultVer2<D, E> with _$ResultVer2<D, E> {
  const factory ResultVer2.success(D data) = Success;
  const factory ResultVer2.error(E error) = Error;
}


enum NetworkError {
  httpError,
  requestTimeout,
  unknown,
  babo,
}