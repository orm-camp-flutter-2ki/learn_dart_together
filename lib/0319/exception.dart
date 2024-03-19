void main() {
  final numString = '10.5';
  int num;
  try {
    num = int.parse(numString);
  } catch (e) {
    print('[error message] $e');
    num = 0;
  }
  print(num);
}

/*
* try-catch()문을 사용하여 위 코드의 예외처리 하기
* : 예외가 발생하면 0으로 처리
*
* try catch() 안에서 선언한 변수/함수는 catch 코드 블럭 브레스 안에서만 유효하다.
* */
