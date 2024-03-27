import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/model/mask.dart';

class MaskApi {
  final _baseUrl = 'http://104.198.248.76:3000';

  Future<List<Mask>> getMasks() async {
    final http.Response response = await http.get(Uri.parse('$_baseUrl/masks'));

    List<Mask> results = [];

    // 섹시 코드
    List jsonList = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('뭔가 에러');

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;

      results = jsonList.map((e) => Mask.fromJson(e)).toList();
    } else {
      throw Exception('뭔가 에러');
    }
    return results;
  }
}
