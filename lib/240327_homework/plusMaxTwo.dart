import 'package:collection/collection.dart';

void main() {
  plusMaxTwo([1, 2, 5, 3, 9, 8]);
}

//길이가 2이상? 일떄
int plusMaxTwo(List<int> numList) {
  int numSum = 0;
  if (numList.isEmpty) {
    print(numSum);
    return numSum;
  }
  if (numList.length == 1) {
    print(numList.first);
    return numSum = numList.first;
  }
  List<int> numSort = numList.sorted((a, b) => b.compareTo(a));

  numSum = numSort
      .slice(0, 2)
      .reduce((previousValue, element) => previousValue + element);
  print(numSum);
  return numSum;
}
