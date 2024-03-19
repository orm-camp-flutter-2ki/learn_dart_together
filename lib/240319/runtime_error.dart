void main() {
  final numString = '10.5';
  try {
    int num = int.parse(numString);
  } catch (e) {
    print(0);
  }
}
