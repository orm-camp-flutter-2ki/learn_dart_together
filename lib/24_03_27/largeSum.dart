import 'package:collection/collection.dart';

int largeSum(List numList) {
  int result = 0;

  if (numList.length > 1) {
    final sortList =
        numList.sorted((a, b) => a.compareTo(b)).reversed.toList().take(2);

    result = sortList.reduce((value, element) => value + element);
  } else if (numList.length == 1) {
    result = numList.first;
  } else {
    result;
  }

  return result;
}
