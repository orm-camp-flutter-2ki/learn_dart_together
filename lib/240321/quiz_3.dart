Future<String?> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok'; //변수에 담아서
}

void main() async {
  try {
    await timeoutFuture().timeout(Duration(seconds: 5));
    print('ok');
  } catch (e) {
    print('timeout');
  }
}
//https://api.flutter.dev/flutter/dart-async/Future/timeout.html timeout에 관련된 공식문서
