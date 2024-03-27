import 'dart:convert';

import 'package:learn_dart_together/240327/model/bank.dart';

class BankData {
  Bank getBank(String data) {
    Map<String, dynamic> jsonData = jsonDecode(data);

    final result = Bank.fromJson(jsonData);

    return result;
  }
}
