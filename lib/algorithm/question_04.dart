void main() {
  /// 부족한 카드 찾기

  print(solution1([1, 2, 5]));
}

String solution1(List<int> cardList) {
  String result = '';
  List<int> allCardList = [1, 2, 3, 4, 5];

  

  for (int card in allCardList) {
    // 1~5 숫자 중 없는 것을 찾아내자
    if (!cardList.contains(card)) {
      result += '$card\n';
    }
  }

  return result;
}
