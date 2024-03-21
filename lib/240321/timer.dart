class Timer {
  Future<String> timeoutFuture(int sec) async {
    String text = await Future.delayed(Duration(seconds: sec))
        .timeout(
          Duration(seconds: 5),
          onTimeout: () => 'timeout'
        ) ?? 'ok';

    return text;
  }
}
