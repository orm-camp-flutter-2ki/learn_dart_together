import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240328/02_dto/stores_dto.dart';

class MaskApi {
  final http.Client _client;
  final urlBase = 'http://104.198.248.76:3000/mask';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<StoreDto>> getstores() async {
    final response = await _client.get(Uri.parse(urlBase));
    List<StoreDto> results = [];

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(utf8.decode(response.bodyBytes));
      results = jsonList.map((e) => StoreDto.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
    return results;
  }
}
