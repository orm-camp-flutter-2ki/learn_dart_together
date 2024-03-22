import 'dart:async';

void main() {
  timeoutTask();
}

Future<String> timeoutTask() async {
  try {
    return await waitTask().timeout(const Duration(seconds: 5));
  } on TimeoutException catch (error) {
    return 'timeout';
  }
}

Future<String> waitTask() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}
