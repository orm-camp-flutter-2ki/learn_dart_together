void main() {
  final List<int> nums = [1, 2, 3];

  final myFunc = (int e) {
    print(e);
  };

  // method reference
  nums.forEach(print);
}

void myFunc2(int e) {
  print(e);
}
