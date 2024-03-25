import 'dart:io';
import 'package:csv/csv.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/DTO/stock_info.dart';

class StockApi {
  Future<List<List<dynamic>>> getStock() async {
    final http.Response response = await http.get(Uri.parse(
        'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo'));

    final List<List<dynamic>> jsonList = const CsvToListConverter().convert(response.body);

    jsonList.removeAt(0);

    return jsonList;
  }
}
