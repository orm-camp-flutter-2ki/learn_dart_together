Future<String> timeoutFuture(String string) async {
  // Future.timeout 함수를 사용하여 5초 안에 완료되지 않으면 'timeout' 을 출력하시오.
  await Future.delayed(Duration(seconds: 2));
  return string;
}

void main() async {
  // https://api.flutter.dev/flutter/dart-async/Future/timeout.html timeout 관련 docs
  String result = await timeoutFuture("ok")
      .timeout(const Duration(seconds: 5), onTimeout: () => "timeout");

  print(result);
}
