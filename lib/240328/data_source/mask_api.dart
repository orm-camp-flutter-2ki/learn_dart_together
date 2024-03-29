import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/dto/mask_dto.dart';

class MaskApi {
  final http.Client _client;
  final baseUrl = 'http://104.198.248.76:3000';
  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MaskDTO> getMaskStores() async {
    final response = await _client.get(Uri.parse('$baseUrl/mask')).onError((error, stackTrace) => throw Exception('Error:$error'));
    print(response.statusCode);

    final json = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    return MaskDTO.fromJson(json);
  }
}
