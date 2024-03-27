import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_27/expected_result.dart';

import '../model/mask.dart';

class maskApi {
  final http.Client _client;
  maskApi({http.Client? client}) : _client = client ?? http.Client();
  Future<List<Mask>> getMasks() async {
    final http.Response res =
        await _client.get(Uri.parse("http://104.198.248.76:3000/mask"));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      return resList.map((e) => Mask.fromJson(e)).toList();
    } else {
      throw Exception('api 받아오다가 문제 생김');
    }
  }
}

class MockJsonPlaceHolderApi implements maskApi {
  @override
  Future<List<Mask>> getMasks() async {
    final result = expectedMasks;
    return result.map((e) => Mask.fromJson(e)).toList();
  }

  @override
  // TODO: implement _client
  http.Client get _client => throw UnimplementedError();
}
