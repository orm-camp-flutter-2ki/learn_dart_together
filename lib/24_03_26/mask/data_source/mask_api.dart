import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/mask/model/mask_model.dart';

class MaskApi {
  final http.Client _client;
  final baseUrl = 'http://104.198.248.76:3000/mask';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MaskModel>> getMasks() async {
    final http.Response response = await _client.get(Uri.parse(baseUrl));

    List<MaskModel> results = [];

    if (response.statusCode == 200) {
      final utf8Decode = utf8.decode(response.bodyBytes); // 한글 깨져서 utf8 디코딩 조치
      final jsonMap = json.decode(utf8Decode) as Map<String, dynamic>; // 초기에 Map형식으로 되어있는 구조
      final jsonList = jsonMap['stores'] as List; // stores만 받아와서 가공
      results = jsonList.map((e) => MaskModel.fromJson(e)).toList();
    } else {
      throw Exception('에러');
    }

    return results;
  }
}
