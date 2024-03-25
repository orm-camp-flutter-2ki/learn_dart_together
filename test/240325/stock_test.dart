import 'package:learn_dart_together/240325/data_source/stock_api.dart';
import 'package:learn_dart_together/240325/model/stock/stock.dart';
import 'package:test/test.dart';

void main() {
  test('Csv 테스트', () async {
    print('========csv========');
    final StockApi api = StockApi();
    final Stock expected = Stock('A', 'Agilent Technologies Inc', 'NYSE', 'Stock', '1999-11-18', 'null', 'Active');

    final data = await api.getStock();

    expect(data[0] == expected, true);
  });
}