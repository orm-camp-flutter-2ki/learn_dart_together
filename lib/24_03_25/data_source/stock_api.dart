import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/stock_info/stock_info.dart';

class StockInfoApi {
  final url =
      'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo';

  Future<List<StockInfo>> getStockInfo() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<List<dynamic>> csvList =
        const CsvToListConverter().convert(response.body);

    csvList.removeAt(0);

    return csvList.map((e) =>  StockInfo.fromCsv(e)).toList();
  }
}
