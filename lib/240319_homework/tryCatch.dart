void main() {
  errorException();
}

int errorException() {
  final numString = '10.5';

  try {
    int num = int.parse(numString);
    return num;
  } catch (e) {
    print(e);
    int num = 0;
    return num;
  } finally {
    print('무조건 실행되는 finally');
  }
}
// 알게 된 것
// num=0 과 return 0의 차이점
// finally => try던 catch던 실행된다!
