void main() {
  /// 빼빼로 파티
  /// 11개 이상의 빼빼로가 있어야 OK, 모자를 경우 더 필요한 빼빼로의 최소 값을 출력한다.
  /// 뻬뻬로는 '1' 로 표시한다.
  /// 1의 갯수를 세어야 하는 문제.

  print(solution1('111'));
}

String solution1(String pepero) {
// 입력된 값의 길이를 구한다. = 빼뺴로 수

  // 뺴빼로 수가 11개 이상일 경우 ok 리턴
  if (pepero.length >= 11) {
    return 'OK';
  }

  //빼빼로 수가 11개 이하 일 경우 모자른 수 리턴
  return (11 - pepero.length).toString();
}
