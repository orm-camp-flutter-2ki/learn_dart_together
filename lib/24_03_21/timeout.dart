Future<String> timeoutFuture() async{
  await Future.delayed(Duration(seconds:4));
  return 'ok';
}

void main() async{

  var result = await timeoutFuture().timeout(const Duration(seconds: 5),onTimeout: () =>'timeout');
  print(result);
}