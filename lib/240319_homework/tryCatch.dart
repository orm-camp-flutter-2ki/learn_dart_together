void main() {
  errorException();
}

int errorException() {
  final numString = '10.5';

  try {
    int num = int.parse(numString);
    print(num);
    return num;
  } catch (e) {
    print(e);
  }
  return 0;
}
