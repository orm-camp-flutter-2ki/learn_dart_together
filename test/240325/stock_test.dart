import 'package:learn_dart_together/240325/data_source/stock_api.dart';
import 'package:learn_dart_together/240325/model/stock/stock.dart';
import 'package:test/test.dart';

void main() {
  group('CSV 테스트', () {
    print('========csv========');
    final StockApi api = StockApi();
    final Stock expected = Stock('A', 'Agilent Technologies Inc', 'NYSE', 'Stock', '1999-11-18', 'null', 'Active');
    final int expectedLength = 11612;
    test('첫 번째 데이터 검증', () async {
      final data = await api.getStock();

      expect(data[0] == expected, true);
    });

    test('첫 번째 데이터 검증', () async {
      final data = await api.getStock();
      print(data.length);

      expect(data.length == expectedLength, true);
    });
  });
}