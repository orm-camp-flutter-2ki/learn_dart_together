import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_source/store.dart';

class MaskApi {
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Store>> getMaskStores() async {
    final response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      final jsonList = json['stores'] as List;
      return jsonList.map((e) => Store.fromJson(e)).toList();
    } else {
      throw Exception('api 문제');
    }
  }
}
