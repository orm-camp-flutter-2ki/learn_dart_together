import 'package:learn_dart_together/240325/model/stock/stock.dart';
import 'package:learn_dart_together/240325/service/csv_service.dart';

class StockApi {
  Future<List<Stock>> getStock() async {
    final csvList = await CsvService().getCsvList('test/240325/listing_status.csv');

    csvList.removeAt(0);

    return csvList.map((e) => Stock.fromCsv(e)).toList();
  }
}