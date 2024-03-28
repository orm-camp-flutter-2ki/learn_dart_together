extension ListSum on List {
  int findSum() {
    if (length < 2) {
      return 0;
    }
    sort((a, b) => b.compareTo(a));

    int sum = this[0] + this[1];

    return sum;
  }
}
