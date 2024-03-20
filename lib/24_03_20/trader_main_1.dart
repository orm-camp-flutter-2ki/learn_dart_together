import 'package:collection/collection.dart';
import 'trader.dart';

void main() {
  transactions
      .where((t) => t.year == 2011)
      .toList()
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((t) => t.trader.name)
      .forEach(print);
}
