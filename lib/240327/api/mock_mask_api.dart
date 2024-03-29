import 'dart:convert';

import 'package:dart_cli_practice/240327/api/mask_api.dart';
import 'package:dart_cli_practice/240327/dto/mask_dto.dart';
import 'package:http/http.dart' as http;

class MockMaskApi implements MaskApi {
  final http.Client _client;

  MockMaskApi({http.Client? client}) : _client = client ?? http.Client();

  @override
  Future<MaskDto> getMaskInfo() async {
    final http.Response response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));

    final jsonList = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('데이터 불러오기에 실패했습니다.');

    return MaskDto.fromJson(jsonList);
  }
}
