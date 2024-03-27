import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/model/store.dart';

class MaskApi {
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Store>> getMaskStores() async {
    final response = await _client.get(Uri.parse('http://104.198.248.76:3000/mask')).onError((error, stackTrace) => throw Exception('Error:$error'));

    // statusCode 200 정상
    // bodyBytes로 받아야
    final json = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    final jsonList = json['stores'] as List;

    return jsonList.map((e) => Store.fromJson(e)).toList();
  }
}
