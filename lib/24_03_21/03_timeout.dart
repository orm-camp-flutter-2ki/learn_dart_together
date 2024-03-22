Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

//다음 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력하시오.
void main() {
  Future<String> future =
      timeoutFuture(); //timeoutFuture() 함수를 호출해 비동기적으로 실행되는 Future를 반환하고, 이를 future 변수에 저장

  future.timeout(Duration(seconds: 5), onTimeout: () {
    // 5초 대기하며, 시간 초과 시 수행할 작업 설정
    print('timeout'); // 시간 초과 시 "timeout" 메시지 출력
    return Future.error('timeout'); // Future에 시간 초과 오류 반환
  });
}
