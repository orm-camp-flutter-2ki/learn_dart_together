import 'package:collection/collection.dart';

class Sum {
  int sumTwoLargestNumber(List<int> numList) {
    final sortedNumList = numList.sorted((a, b) => b.compareTo(a));
    return sortedNumList[0] + sortedNumList[1];
  }
}