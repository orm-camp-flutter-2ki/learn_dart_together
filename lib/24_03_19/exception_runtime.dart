void main() {
  final numString = '10.5';
  int num;

  try {
    num = int.parse(numString); // catch 에서 num = 0 값을 이용해야 하니까 다시 바꿈 ;;
  } catch (e) {
    print("예외 발생: $e");
    num = 0;
  }
  print(num);
}











