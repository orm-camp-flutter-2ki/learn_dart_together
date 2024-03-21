import 'dart:async';

void main() {
  timeoutTask();
}

void timeoutTask() async {
  try {
    await waitTask().timeout(const Duration(seconds: 5));
  } on TimeoutException catch (error) {
    print('timeout');
  }
}

Future<String> waitTask() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}
