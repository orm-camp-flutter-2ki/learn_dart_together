import 'dart:io';

import 'package:csv/csv.dart';

import '../model/user.dart';

class CsvApi{


/*  Future<List<Stock>> getStocks() async {
    final http.Response response = await http.get(Uri.parse(
        'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo'));

    List<List<dynamic>> rowsAsListOfValues =
    const CsvToListConverter().convert(response.body);

    rowsAsListOfValues.removeAt(0);

    return rowsAsListOfValues.map((e) => Stock.fromJson(e)).toList();
  }*/
  Future<void> saveUser(List<User> userList) async {
    List<List> csvTable = [['id', 'name', 'address', 'birth', 'isMember', 'createdAt', 'loanBooks']];
    userList.forEach((element) {
      List user = [
        element.id,
        element.name,
        element.address,
        element.birth,
        element.isMember,
        element.createdAt,
        element.loanBooks
      ];
      csvTable.add(user);
    });
    final test = ListToCsvConverter().convert(csvTable);
    await File('user.csv').writeAsString(test);
  }

}