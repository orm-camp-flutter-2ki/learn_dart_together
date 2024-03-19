void main() {

  try {
    //에러가 없을 때 실행할 로직
    final numString = '10';
    int num = int.parse(numString);
    print(num);
  } catch (e) {
    //에러가 있을 때
    int num = 0;
    print(num);
  }
}