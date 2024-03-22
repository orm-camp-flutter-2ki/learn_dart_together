import 'dart:async';

class TimeOut {
  Future<String> timeoutFuture() async {
    await Future.delayed(Duration(seconds: 6));
    return 'ok';
  }
}

void main() async {
  TimeOut timeOut = TimeOut();
  // 5초 경과 후 timeout 오류 발생하도록 수정
  await timeOut.timeoutFuture().timeout(Duration(seconds: 5));
}
