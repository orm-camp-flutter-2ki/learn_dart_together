import 'trader.dart';

void main() {
  transactions
      .where((t) => t.trader.city == "Cambridge")
      .forEach((t) => print(t.value));
}
