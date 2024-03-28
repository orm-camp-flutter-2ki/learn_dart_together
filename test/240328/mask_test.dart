import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/model/mask/store.dart';
import 'package:learn_dart_together/240328/repository/mask_repository.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';

import 'resource/mask.dart';

void main() async {
  Map<String, dynamic> mockMap = expectedMask;
  Store expectedStore = Store(addr: '서울특별시 강북구 솔매로 38 (미아동)', code: '11817488', createdAt: '2020/07/03 11:00:00', lat: 37.6254369, lng: 127.0164096, name: '승약국', remainStat: 'plenty', stockAt: '2020/07/02 18:05:00', type: '01');

  group('Mask Test', () {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockMap)), 200);
      }
      return http.Response('''{"message": "오류"}''', 400);
    });
    MaskRepository maskRepository =
    MaskRepositoryImpl(api: MaskApi(client: mockClient));

    test('data check', () async {
      final stores = await maskRepository.getMaskStores();
      expect(stores[0] == expectedStore, true);
    });

    test('null check', () async {
      final stores = await maskRepository.getMaskStores();
      // mockMap의 stores에는 null이 없는 객체와 있는 객체 2가지가 있음
      // null이 있는 객체가 사라졌으니 length는 1
      expect(stores.length == 1, true);
    });
  });
}