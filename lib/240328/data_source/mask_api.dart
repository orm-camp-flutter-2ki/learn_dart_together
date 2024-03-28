import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/mask.dart';

class MaskApi {
  final _url = 'http://104.198.248.76:3000';

  Future<Mask> getMasks() async {
    final http.Response response = await http.get(Uri.parse('$_url/mask'));
    final Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('에러 확인');
    return Mask.fromJson(json);
  }
}
