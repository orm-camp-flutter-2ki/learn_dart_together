extension ParseToIntOrZero on String {
  int toIntOrZero() {
    int result;
    try {
      result = int.parse(this);
    } catch (e) {
      result = 0;
    }
    return result;
  }
}

void main() {
  final numString = '10.5';
  int num = numString.toIntOrZero();
  print(num);
}
