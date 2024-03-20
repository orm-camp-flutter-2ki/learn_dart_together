void main(){
  final numString = '10.5';
  int number;

  try {
    number = int.parse(numString);
  } catch(e) {
    number = 0; //예외 발생하면 0으로 처리
  }
  print(number);
}
