import 'package:learn_dart_together/practice/240320_query/dto/trader_dto.dart';
import 'package:learn_dart_together/practice/240320_query/dto/transaction_dto.dart';
import 'package:learn_dart_together/practice/240320_query/model/trader.dart';
import 'package:learn_dart_together/practice/240320_query/model/transaction.dart';

extension TraderMapper on TraderDto {
  Trader toTrader() {
    return Trader(
      name: name ?? '',
      city: city ?? '',
    );
  }
}

extension TransactionMapper on TransactionDto {
  Transaction toTransaction() {
    return Transaction(
      trader != null
          ? Trader(name: trader!.name!, city: trader!.city!)
          : Trader(name: '', city: ''),
      year ?? -1,
      value ?? 0,
    );
  }
}
