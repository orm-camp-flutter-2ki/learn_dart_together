import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  try {
    final result = await Future.timeout(
      Duration(seconds: 5),
      timeoutFuture(),
    );
    print(result);
  } on TimeoutException catch(e) {
    print('timeout : $e');
  }
}