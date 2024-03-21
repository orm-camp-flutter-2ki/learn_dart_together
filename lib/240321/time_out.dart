//특정 Future 작업이 주어진 시간 내에 완료되지 않으면 타임아웃 처리를
// 수행하는 기능을 제공합니다. 이 함수는 두 개의 매개변수를 받습니다.

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}
