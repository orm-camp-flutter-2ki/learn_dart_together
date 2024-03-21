Future<String?> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 2));
  return 'ok'; //변수에 담아서
}

void main() async {
  try {
    await timeoutFuture().timeout(Duration(seconds: 3));
    print('ok');
  } catch (e) {
    print('timeout');
  }
}
