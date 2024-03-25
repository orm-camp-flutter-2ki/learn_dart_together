import 'package:learn_dart_together/24_03_25/DTO/stock_info.dart';
import 'package:learn_dart_together/24_03_25/data_source/stock_api.dart';
import 'package:test/test.dart';

void main() {
  group('주식 정보 Csv 파싱 테스트', () {
    StockApi stockApi = StockApi();

    test('stockApi.getStock()를 호출하면 List<List<dynamic>> 타입이 반환된다.',() async {
      final List<List<dynamic>> jsonList = await stockApi.getStock();

      expect(jsonList is List<List<dynamic>>, true);
    });

    test('stocks 초기화 테스트',() async {
      final List<List<dynamic>> jsonList = await stockApi.getStock();
      Stocks stocks = Stocks.fromCsv(jsonList);

      final expectValue = 11612;
      
      expect(stocks.stockInfoList.length, equals(expectValue));
    });
  });
}