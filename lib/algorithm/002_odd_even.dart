import 'dart:convert';
import 'dart:io';

void main() {
  print('두 정수를 입력해 주세요');

  // 표준 입출력으로 숫자를 입력받음 -> "10 15"
  String? numbers = stdin.readLineSync(encoding: utf8);

  if (numbers == null) {
    // 입력값이 존재하지 않을 때
    return;
  } else {
    // 입력값이 존재할 때
    // 숫자를 파싱 -> [10][15]
    List<String> numList = numbers.split(' ');

    // // 방법 1
    // int num1 = int.parse(numList[0]); // "10" -> 10
    // int num2 = int.parse(numList[1]); // "15" -> 15
    //
    // /*
    //   경우의 수
    //   1. 짝 짝 -> 0 0 -> NO
    //   2. 짝 홀 -> 0 1 -> YES
    //   3. 홀 홀 -> 1 1 -> NO
    // */
    //
    // // 두 숫자를 2로 나눈 나머지를 더했을 떄 1이면 홀수/짝수 경우로 YES 아닌 경우는 모두 NO
    // if(((num1 % 2) + (num2 % 2)) == 1) {
    //   print('YES');
    // } else {
    //   print('NO');
    // }

    // 방법 2
    int num1 = int.parse(numList[0]);
    int num2 = int.parse(numList[1]);

    if (num1.isEven ^ num2.isEven) {
      /**
       * ^ XOR 비트연산자
       * 0 ^ 0 -> 0
       * 1 ^ 1 -> 0
       * 0 ^ 1 -> 1
       * */
      print('YES');
    } else {
      print('NO');
    }
  }

  print(numbers);
}
