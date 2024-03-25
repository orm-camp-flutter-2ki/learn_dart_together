import 'package:csv/csv.dart';
import 'package:http/http.dart' as http;

class StockApi {
  Future<List<List<dynamic>>> getStock() async {
    final http.Response response = await http.get(Uri.parse(
        'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo'));

    final List<List<dynamic>> jsonList = const CsvToListConverter().convert(response.body);

    jsonList.removeAt(0);

    return jsonList;
  }
}
