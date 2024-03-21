import 'dart:async';

Future<String> timeoutFuture() async {
  try{
  await Future.delayed(Duration(seconds: 6))
  .whenComplete(() => Future.error(Duration(seconds: 5)));
  return 'ok';} catch (error) {
    print('object');
    return '';
  }
}

void main (){
  timeoutFuture();
}