// [*] 두 수를 입력 받아 비교해 더 큰 수를, 같으면 'eq'를 출력하는 함수

void main() {
  print(solution01(10, 20)); // 20
  print(solution01(10, 10)); // eq

}

String solution01(int a, int b) {
  //[1] input
  String result = '';

  //[2] process
  if (a < b) {
    return b.toString(); // String 으로 형 변환
  } else if (b < a) {
    return a.toString();
  } else {
    print('eq');
  }

  //[2-1] 조금 줄인 코드...
  /*
  String result = 'eq';
  if (a < b) {
    return b.toString(); // String 형 변환
  } else {
    return a.toString();
  }
  */

  //[3]output
  return result;

}