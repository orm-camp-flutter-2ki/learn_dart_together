import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/orm_240327/01_data_repository/mask_repository_impl.dart';
import 'package:learn_dart_together/orm_240327/01_data_source/mask_api.dart';
import 'package:learn_dart_together/orm_240327/mask.dart';
import 'package:test/test.dart';

void main() {
  test('maskTest', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'http://104.198.248.76:3000/mask') {
        return http.Response(jsonEncode(e), 200);
      }
      return http.Response('error', 400);
    });
    final repository = MaskRepositoryImpl(MaskApi(client: mockClient));
    final results = await repository.getMask();
    final expected =
        results.map((e) => Mask.fromJson(e as Map<String, dynamic>)).toList();

    expect(results.equals(expected), true);
  });
}
