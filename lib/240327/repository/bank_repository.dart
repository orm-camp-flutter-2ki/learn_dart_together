import '../data_source/bank.dart';

abstract interface class BankRepository {
  Future<String> getJson();

  Future<Bank> getClass();
}
