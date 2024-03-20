import 'package:collection/collection.dart';
import 'trader.dart';

void main() {
  transactions
      .where((t) => t.trader.city == "Cambridge")
      .map((t) => t.trader.name)
      .toSet()
      .toList()
      .sorted((a, b) => a.compareTo(b))
      .forEach(print);
}
