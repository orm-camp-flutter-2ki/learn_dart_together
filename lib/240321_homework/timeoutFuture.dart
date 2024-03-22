void main() async {
  try{
    await timeoutFuture().timeout(Duration(seconds: 5));
  }catch(e){
    print('timeout');
  }
}

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}