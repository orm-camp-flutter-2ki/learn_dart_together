import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/model/mask.dart';

class MaskApi {
  Future<Mask> getMask() async {
    //에이싱크가 있으면 무조건 퓨쳐로 감싸서 반환된다.
    final response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData =
          jsonDecode(utf8.decode(response.bodyBytes));
      return Mask.fromJson(
          jsonData); //map이 여러개가 count라는 키에 벨류가 있고... map(count, stores 이 하나니까 map할 필요가 없음
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
