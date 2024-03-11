void main() {
  /// 문자열 결합
  /// 임의의 문자열, 숫자를 입력받고 출력하기

  print(solution1(3, ['apple', 'banana', 'grape']));
}

String solution1(int num, List<String> nameList) {
  String result = 'Hello ';

  result += nameList[0]; //result = 'hello apple'

  for (int i = 1; i < nameList.length; i++) {
    result += ',${nameList[i]}';
  }

  result += '.';

  return result;
}
