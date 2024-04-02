// 범용적이기 때문..
// 기존에 try-catch의 문제가 있었다.. 손이 많이 간다..
// 다양한 에러를 내가 정의하고 만들어서 성공, 실패(몇가지 케이스를 담은..)로 추리는.. 강제하는.. 하나씩 확인해서 처리하는...

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.error(String error) = Error;
  // const factory Result.loading() = Loading;
}
