import 'package:csv/csv.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/data_source/stock_api.dart';
import 'package:learn_dart_together/24_03_25/stock_info/stock_info.dart';

void main() async {
  List<StockInfo> info = await StockInfoApi().getStockInfo();

  print(info);
}
