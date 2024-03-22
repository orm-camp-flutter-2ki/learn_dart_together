import 'dart:async';

Future<String> timeoutFuture() async{
  try{
    await Future.delayed(Duration(seconds: 6)).timeout(const Duration(seconds: 5));
  }on TimeoutException{
    return 'timeout';
  }
  return 'ok';
}