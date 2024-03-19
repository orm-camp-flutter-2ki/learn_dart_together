void main() {
  try {
    errorCode();
  } catch (e) {
    print(0);
  }
}

void errorCode() {
  final numString = '10.5';
  int num = int.parse(numString);
  print(num);
}
