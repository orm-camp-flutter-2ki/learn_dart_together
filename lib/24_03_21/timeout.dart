Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  final result = await timeoutFuture()
      .timeout(const Duration(seconds: 5), onTimeout: () => "timeout");
  print(result);
}