Future<String> timeoutFuture() async {
  try {
    await Future.delayed(Duration(seconds: 6)).timeout(Duration(seconds: 5));
    return 'ok';
  } catch (e) {
    return 'timeout';
  }
}
