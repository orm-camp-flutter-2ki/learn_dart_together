void main(){
  final numString = '10.5';

  try {
    int num = int.parse(numString);
    print(num);
  } on FormatException {
    print('숫자 변환에 실패. num 변수에 0을 할당');
    int num = 0;
    print(num);
  } catch(e) {
    print(e.toString());
  }
}

void someError() {
  //뭔가를 하는 코드
  throw FormatException('에러가 발생했습니다.');
}