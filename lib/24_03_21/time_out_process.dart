Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6)); // 6초동안 기다리는 코드
  return 'ok';
}

void main() async {
  try {
    // 5초 이내에 완료하기
    // timeoutFuture을 6으로 설정하여 100% 에러 -> 따로 출력할 data 없음
    await timeoutFuture().timeout(Duration(seconds: 5));
  } catch (e) {
    // 5초 이내 완료되지 않았음 = 에러
    // timeout 출력
    print('timeout');
  }
}
