import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/mask_dto.dart';

class MaskApi {
  Future<MaskDto> getMasks() async {
    final response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));

    Map<String, dynamic> jsonList = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception("에러");

    MaskDto data = MaskDto.fromJson(jsonList);
    return data;
  }
}
