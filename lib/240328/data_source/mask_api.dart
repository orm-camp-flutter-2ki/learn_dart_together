import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/dto/mask_dto.dart';

class MaskApi {
  Future<MaskDto> getMaskInfo() async {
    final response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
    final Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('에러 확인');
    return MaskDto.fromJson(json);
  }
}
