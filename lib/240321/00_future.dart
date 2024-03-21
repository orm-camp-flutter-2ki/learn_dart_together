void main() async {
  print('시작');

  final delay = await Future.delayed(Duration(seconds: 1), () {
    print('콜백');
  });

  print('끝');

  // myFuture();
  await myFuture();
  print('진짜 끝');
}

Future<bool> myFuture() async {
  await Future.delayed(Duration(seconds: 1));

  print('myFuture');
  return true;
}

bool myFuture2() {
  print('myFuture2');
  return true;
}
