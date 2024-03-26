import 'package:learn_dart_together/24_03_25/apis/stock_info_api.dart';
import 'package:learn_dart_together/24_03_25/models/stock_info.dart';
import 'package:test/test.dart';

import '../fake_http_proxy.dart';

void main() {
  group('StockInfoApi 클래스', () {
    final StockInfoApi todoApi = StockInfoApi(http: FakeHttpProxy());

    group('getStockInfoList 메소드는', () {
      test(
          'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=demo 엔드포인트에서 받은 xml을 SubwayInfoList 객체로 매핑하여 반환한다.',
          () async {
        // Given
        StockInfo expected = StockInfo(
          symbol: 'A',
          name: 'Agilent Technologies Inc',
          exchange: 'NYSE',
          assetType: 'Stock',
          ipoDate: '1999-11-18',
          delistingDate: null,
          status: 'Active',
        );

        // When
        List<StockInfo> result = await todoApi.getStockInfoList();

        // Then
        expect(result.first, expected);
      });
    });
  });
}
