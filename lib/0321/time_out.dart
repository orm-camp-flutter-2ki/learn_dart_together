import 'dart:async';

Future<void> timeOutFuture(int seconds) async {
  try {
    await Future.delayed(Duration(seconds: seconds)).timeout(Duration(seconds: 5));
    print('OK');
  } catch (e) {
    print('Timeout');
  }
}

Future<void> main() async {
  final stopWatch = Stopwatch()..start();

  // await timeOutFuture(4); // ok 출력
  await timeOutFuture(5); // ok 출력
  // await timeOutFuture(6); // time out 출력

  print('(경과시간 : ${stopWatch.elapsed})');
}