int catchException(String numString) {
  int num;
  try {
    num = int.parse(numString);
  } catch (e) {
    print('${e.toString()} \n[에러 발생! 변수를 0으로 초기화 합니다.]');
    num = 0;
  }

  return num;
}