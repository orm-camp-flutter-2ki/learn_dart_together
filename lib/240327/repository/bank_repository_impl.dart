import 'dart:convert';

import 'package:learn_dart_together/240327/model/bank_api.dart';
import 'package:learn_dart_together/240327/repository/bank_repository.dart';

import '../data_source/bank.dart';

class BankRepositoryImpl implements BankRepository {
  @override
  Future<String> getJson() async {
    var bankjson = jsonEncode(Bank.fromJson(BankApi()).toJson());
    return bankjson;
  }

  @override
  Future<Bank> getClass() async {
    Bank bankclass = Bank.fromJson(BankApi());
    return bankclass;
  }
}
