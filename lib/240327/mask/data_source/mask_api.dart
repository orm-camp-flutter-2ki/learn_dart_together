import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/mask_dto.dart';

class MaskApi {
  final http.Client _client;

  final _baseUrl = 'http://104.198.248.76:3000';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MaskDto> getMask() async {
    final http.Response response =
        await _client.get(Uri.parse('$_baseUrl/mask'));

    return MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}
