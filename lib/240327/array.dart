import 'package:collection/collection.dart';

class Array {
  int sumMaxNum(List<int> nums) {
    int addNum =
        nums.sorted((a, b) => b.compareTo(a)).take(2).reduce((a, b) => a + b);
    return addNum;
  }
}
