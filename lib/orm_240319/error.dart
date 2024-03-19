class Error1 {
void errorCode() {
  final numString = '10.5';
  int num = int.parse(numString);
  print(num);
}

void errorSome() {
  try {
    errorCode();
  } catch (e) {
    int num = 0;
    print(num == 0);
  }
}
}
void main() {
}