import 'package:collection/collection.dart';

class Array {
  int sumTwoNumber(List<int> number) {
    int addNumber = number
        .sorted((a, b) => b.compareTo(
            a)) //입력된 리스트 number를 내림차순으로 정렬 ompareTo 함수를 사용 양수 오름차 음수 내림차 ba니까 내림차
        .take(2) //정렬된 리스트에서 가장 큰 두 개의 숫자를 선택
        .reduce((a, b) =>
            a + b); //선택된 두 개의 숫자를 더하여 합을 계산 reduce 각 요소를 하나의 값으로 결합하는 함수
    return addNumber;
  }
}
