import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() {
  timeoutFuture()
      .timeout(Duration(seconds: 5), onTimeout: () => 'timeout')
      .then((result) {
    print(result);
  })
      .catchError((error) {
    print(error);
  });
}