import 'package:collection/collection.dart';

int compare(List nums) {
  //List numEx = [1, 2, 5, 3, 9, 8];
  List filteredNum = nums.sorted((a, b) => b.compareTo(a)).sublist(0, 2);
  return filteredNum[0] + filteredNum[1];
}

main() {
  print(compare([1, 2, 5, 3, 9, 8]));
}
