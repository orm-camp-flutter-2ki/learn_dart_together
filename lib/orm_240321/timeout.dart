Future<String> timeoutFuture({required int sec}) async {
  try {
    await Future.delayed(Duration(seconds: sec)).timeout(Duration(seconds: 5));
  } catch(e){
    return 'timeout';
  }
  return 'ok';
}

