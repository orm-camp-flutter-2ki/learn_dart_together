import 'dart:convert';

import 'package:dart_cli_practice/240327/dto/mask_dto.dart';
import 'package:http/http.dart' as http;

class MaskApi {
  Future<MaskDto> getMaskInfo() async {
    final http.Response response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));

    Map<String, dynamic> jsonList = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('데이터 불러오기에 실패했습니다.');

    return MaskDto.fromJson(jsonList);
  }
}
