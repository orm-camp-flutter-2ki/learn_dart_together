import 'package:collection/collection.dart';

int compareNumber(List<int> intList) {
  return intList
      .sorted((a, b) => a.compareTo(b) * -1)
      .take(2)
      .reduce((value, element) => value + element);
}
