void main() async {
  print('시작');
  final delay = await Future.delayed(Duration(seconds: 1), () {
    // 콜백
    print('콜백');
  });
  print('끝');

  // await myFuture()
  //     .then((value) => print('then 이후 $value'))
  //     .then((value) => print('두번 째 then'));

  final bool value = await myFuture();
  print('then 이후 $value');
  print('두번 째 then');

  print('진짜 끝');
}

// 오래걸리는 함수
Future<bool> myFuture() async {
  // Future 함수가 끝날때까지 기다리게
  await Future.delayed(Duration(seconds: 2));

  print('myFuture1');
  return true;
}

bool myFuture2() {
  print('myFuture2');
  return true;
}
