import 'dart:async';

/// Future.timeout(시간) 함수를 사용하면
/// Future가 특정 시간안에 종료되지 않았을 때 타임아웃 처리를 할 수 있다
/// 다음 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력하시오.
Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  // 방법1
  final res = await timeoutFuture().timeout(
    const Duration(seconds: 5),
    onTimeout: () => 'timeout1',
  );

  print(res);

  // 방법2
  try {
    await timeoutFuture().timeout(Duration(seconds: 2));
  } on TimeoutException catch (e) {
    print('TimeoutException :: $e | timeout2');
  }
}
