void main(){
  final numString = '10.5';

  try {
    int num = int.parse(numString);
    print(num);
  } catch(e) {
    print(e.toString());
  }
}

void someError() {
  //뭔가를 하는 코드
  throw FormatException('에러가 발생했습니다.');
}