Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6), () {
    print('time out');
  });

  return 'ok';
}

void main() {
  timeoutFuture();
}
