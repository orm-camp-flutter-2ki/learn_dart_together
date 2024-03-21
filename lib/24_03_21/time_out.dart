Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async{
  try {
    print(await timeoutFuture().timeout(Duration(seconds: 5))); // 5초안에 처리되면 ok
  } catch(e) {
    print('타임 아웃'); // 아니면 타임 아웃
  }
}