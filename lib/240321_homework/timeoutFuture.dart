void main(){
  timeoutFuture();
}
Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6)).timeout(Duration(seconds: 5));
  return 'ok';
}