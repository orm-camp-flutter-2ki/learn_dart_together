import 'trader.dart';

void main() {
  int maxTransactionValue =
      transactions.fold(0, (max, t) => t.value > max ? t.value : max);
  print(maxTransactionValue);
}
