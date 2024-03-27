import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0327/model/mask.dart';

import '../model/store.dart';

class MaskStoresApi {
  // test용 mockClient 객체 사용
  final http.Client _client;
  MaskStoresApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Store>> getMaskStoresApi() async {
    final http.Response response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));

    final Map<String, dynamic> json = (response.statusCode == 200)
        ? await jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception(
            '[Error]\n${response.statusCode} ${response.reasonPhrase}');

    return await json['stores'].map(Store.fromJson(json));
  }
}
