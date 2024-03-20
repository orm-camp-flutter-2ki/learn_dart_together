import 'trader.dart';

void main() {
  int minTransactionValue = transactions.fold(
      transactions.first.value, (min, t) => t.value < min ? t.value : min);
  print(minTransactionValue);
}
