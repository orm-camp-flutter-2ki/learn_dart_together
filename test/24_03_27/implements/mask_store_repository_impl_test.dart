import 'dart:convert';
import 'dart:io';
import 'package:learn_dart_together/24_03_27/data_source/mask_store_api.dart';
import 'package:learn_dart_together/24_03_27/model/mask_store.dart';
import 'package:learn_dart_together/24_03_27/repository/implements/mask_store_repository_impl.dart';
import 'package:learn_dart_together/24_03_27/repository/interface/mask_store_repository.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  group('MaskStore Api 호출 테스트', () {
    test('200 성공 테스트', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
          return http.Response.bytes(utf8.encode(toJson), 200);
        }

        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });

      final MaskStoreRepository repo =
          MaskStoreRepositoryImpl(MaskStoreApi(client: mockClient));
      final MaskStore store = await repo.getStore();

      final givenValue = store.stores.map((e) => e.name).first;
      final expectValue = '승약국';

      expect(givenValue, expectValue);
    });

    test('400 에러 테스트', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
          return http.Response.bytes(utf8.encode(toJson), 400);
        }

        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });

      final MaskStoreRepository repo =
          MaskStoreRepositoryImpl(MaskStoreApi(client: mockClient));

      await expectLater(() async {
        final MaskStore store = await repo.getStore();
      }, throwsException);
    });

    test('200 성공 테스트 - headers 사용', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
          return http.Response(toJson, 200, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
          });
        }

        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });

      final MaskStoreRepository repo =
          MaskStoreRepositoryImpl(MaskStoreApi(client: mockClient));
      final MaskStore store = await repo.getStore();

      final givenValue = store.stores.map((e) => e.name).first;
      final expectValue = '승약국';

      expect(givenValue, expectValue);
    });
  });
}

final String toJson =
    '''{"count":222,"stores":[{"addr":"서울특별시 강북구 솔매로 38 (미아동)","code":"11817488","created_at":"2020/07/03 11:00:00","lat":37.6254369,"lng":127.0164096,"name":"승약국","remain_stat":"plenty","stock_at":"2020/07/02 18:05:00","type":"01"}]}''';
