import 'trader.dart';

void main() {
  transactions.map((t) => t.trader.city).toSet().forEach(print);
}
