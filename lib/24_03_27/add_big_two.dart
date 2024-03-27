import 'package:collection/collection.dart';

int addTwoBig(List<int> list) {
  int result = 0;

  if (list.isEmpty) {
    return result;
  }

  if (list.length == 1) {
    return list[0];
  }

  List<int> sorted = list.sorted((a, b) => b - a);

  return sorted[0] + sorted[1];
}
