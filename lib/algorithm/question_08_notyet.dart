void main() {
  /// 카드 정렬
  /// 1~9 까지의 숫자 중 4장만 사용 가능. 같은 숫자 카드 중복 가능
  /// 입력한 4개의 숫자 중 1,2번을 하나의 정수 그리고 3,4번을 하나의 정수로 본다.
  /// 고른 카드 숫자로 뽑을 수 있는 최대 합을 계산 한다.

  print(solution1([1, 3, 7, 9]));
}

String solution1(List<int> cards) {
// 순열알고리즘 재귀함수

  int firstNum = int.parse('${cards[0]}${cards[1]}');
  int secondNum = int.parse('${cards[2]}${cards[3]}');

  print('$firstNum + $secondNum');

  return '\n';
}
