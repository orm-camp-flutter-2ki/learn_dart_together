import 'package:csv/csv.dart';
import 'package:learn_dart_together/240325/stock.dart';
import 'package:http/http.dart' as http;

class StockApi {
  //Future<List<Stock>>

  Future<List<Stock>> getStocks() async {
    final http.Response response = await http.get(Uri.parse(
        'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo'));

    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(response.body);

    rowsAsListOfValues.removeAt(0);

    return rowsAsListOfValues.map((e) => Stock.fromJson(e)).toList();
/*    final xml = utf8.decode(response.bodyBytes);

    xml2Json.parse(utf8.decode(response.bodyBytes));
    var jsonData = xml2Json.toParker();

    final Map<String, dynamic> map = jsonDecode(jsonData);
    final List jsonList = map['realtimeStationArrival']['row'] as List;
    return jsonList.map((e) => Subway.fromJson(e)).toList();*/
  }
}
