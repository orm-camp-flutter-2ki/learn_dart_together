import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  // getTimeoutResult() 함수를 호출하여 Future 얻기
  Future<String> future = timeoutFuture();

  // try-catch 블록을 사용하여 오류 처리
  try {
    // Future 결과를 5초 이내에 얻기
    String result = await future.timeout(Duration(seconds: 5));
    // 결과 출력
    print('result: $result');
  } catch (error) {
    // 오류 발생 시 오류 메시지 출력
    print('error: $error');
  }
}