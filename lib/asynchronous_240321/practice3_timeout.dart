import 'dart:async';

Future<String> timeoutFuture() async {
  try {
    // 6초 후 실행하고
    await Future.delayed(Duration(seconds: 6))
    // 동시에 5초 후 무조건 에러 실행.
        .whenComplete(() => Future.error(Duration(seconds: 5)));
    return 'OK';
  } catch (error) {
    //에러나면
    print('꽝! 5초 경과');
    return 'failure';
  }
}

void main() {
  timeoutFuture();
}
