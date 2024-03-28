import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_27/model/store.dart';

import '../../24_03_28/dto/mask_dto.dart';

class MaskApi {
  final http.Client _client;

  final _baseUrl = 'http://104.198.248.76:3000';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MaskDto>> getStores() async {
    final http.Response response =
        await _client.get(Uri.parse('$_baseUrl/mask'));

    List<MaskDto> results = [];
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      final jsonList = json['stores'] as List;

      results = jsonList.map((e) => MaskDto.fromJson(e)).toList();
    } else {
      throw Exception('에러가 발생했습니다.');
    }
    return results;
  }
}
