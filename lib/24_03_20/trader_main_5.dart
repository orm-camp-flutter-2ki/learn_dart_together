import 'trader.dart';

void main() {
  transactions.any((t) => t.trader.city == "Milan")
      ? print("Yes")
      : print("No");
}
