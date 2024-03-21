Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6))
      .timeout(const Duration(seconds: 5),
      onTimeout: () {
    print('timeout');
  });

  return 'ok';
}

void main() {
  timeoutFuture();
}
