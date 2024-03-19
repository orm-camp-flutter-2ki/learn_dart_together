void main(){
  final numString = '10.5';
  int num;

  try {
    num = int.parse(numString);
  } catch(e) {
    print(e);
    num = 0; //예외 발생하면 0으로 처리
  }
  print(num);
}
