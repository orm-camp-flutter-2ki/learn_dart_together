import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/dto/store_dto.dart';

class MaskApi {
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<StoreDto>> getMaskStores() async {
    final response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      final jsonList = json['stores'] as List;
      return jsonList.map((e) => StoreDto.fromJson(e)).toList();
    } else {
      throw Exception('api 문제');
    }
  }
}
