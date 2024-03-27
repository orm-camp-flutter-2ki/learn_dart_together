import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/mask.dart';

class MaskApi {
  final String baseUrl = 'http://104.198.248.76:3000/mask';

  Future<List<Mask>> getMasks() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data =
          json.decode(utf8.decode(response.bodyBytes)); // 한글 깨짐 해결
      final List<dynamic> masksJson = data['stores'];
      return masksJson.map((json) => Mask.fromJson(json)).toList();
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  final maskApi = MaskApi();
  final masks = await maskApi.getMasks();
  print(masks);
}
