import 'dart:async';

Future<void> timeOutFuture(int seconds) async {
  String text = '';
  const int timeLimit = 5;
  final stopWatch = Stopwatch()..start();

  switch (seconds) {
    case <= 5:
      await Future.delayed(Duration(seconds: seconds));
      text = 'ok';
      print('(경과시간 : ${stopWatch.elapsed.inSeconds}초)');
    case >= timeLimit:
      await Future.delayed(Duration(seconds: timeLimit));
      text = 'time out';
  }
  print(text);
  return;
}

Future<void> main() async {
  // await timeOutFuture(-1); // 바로 ok 출력
  // await timeOutFuture(0); // 바로 ok 출력
  await timeOutFuture(3); // ok 출력
  // await timeOutFuture(5); // ok 출력
  // await timeOutFuture(6); // time out 출력
}
