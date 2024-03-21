import 'dart:async';

class TimeOut {
  Future<String> timeoutFuture() async {
    await Future.delayed(Duration(seconds: 6));
    return 'ok';
  }
}
