import 'package:learn_dart_together/240325/stock.dart';
import 'package:learn_dart_together/data_source/stock_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  test('practice4', () async {
    StockApi subwayApi = StockApi();
    List subways = await subwayApi.getStocks();
    print(subways[0]);
    expect(subways[0] is Stock, true);
  });
}
