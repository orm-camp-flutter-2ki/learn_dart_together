void main() async {
  final result = await timeoutFuture(4).timeout(
    Duration(seconds: 5),
    onTimeout: () => 'timeout',
  );

  print(result);
}

Future<String> timeoutFuture(int time) async {
  await Future.delayed(Duration(seconds: time));
  return 'ok';
}
