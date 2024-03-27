import 'package:collection/collection.dart';

int test3(List<int> list) {
  List<int> sortedList = list.sorted((a, b) => b.compareTo(a));

  int first = sortedList.removeAt(0);
  int sec = sortedList.removeAt(0);
  return first + sec;
}