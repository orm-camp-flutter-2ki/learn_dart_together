void main () {
  try {
    final numString = '10.5';
    int num = int.parse(numString);
    print(num);
  } catch (e) {
    int num = 0;
    print(num);
  }
}