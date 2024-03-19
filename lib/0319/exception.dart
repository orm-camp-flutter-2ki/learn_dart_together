void main() {
  final numString = '10.5';
  int num = int.parse(numString); // runtime error;
  print(num);
}

/*
* try-catch()문을 사용하여 위 코드의 예외처리 하기
* : 예외가 발생하면 0으로 처리
* */