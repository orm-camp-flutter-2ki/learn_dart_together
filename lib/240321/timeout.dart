Future<String> timeoutFuture(int i) async {
  try {
    await Future.delayed(Duration(seconds: 6)).timeout(Duration(seconds: i));
    return 'ok';
  } catch (e) {
    return 'timeout';
  }
}
