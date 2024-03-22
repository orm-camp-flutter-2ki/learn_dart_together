import 'dart:async';

void main() {
  timeoutFuture();
}

void timeoutFuture() async {
  try {
    await waitTask("completed").timeout(Duration(seconds: 6));

  } on TimeoutException catch(e, s){
    print(e);
    print(s);

  } catch (e, s) {
    print(e);
    print(s);
  }
}

Future<String> waitTask(String str) async {
  await Future.delayed(const Duration(seconds: 10));
  return str;
}