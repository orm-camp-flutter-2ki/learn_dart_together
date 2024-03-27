import 'package:collection/collection.dart';

int biggestTwoNumber(List<int> numList) {
  numList.sort();
  return numList[numList.length - 1] + numList[numList.length - 2];
}