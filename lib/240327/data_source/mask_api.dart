import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/model/mask.dart';

class MaskApi {
  final String _baseUrl = 'http://104.198.248.76:3000/mask';

  Future<List<Mask>> getMasks() async {
    try {
      final http.Response response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
        final List<dynamic> storesJson = jsonMap['stores'] as List<dynamic>; // Get the 'stores' list from JSON
        final List<Store> stores = storesJson.map((e) => Store.fromJson(e as Map<String, dynamic>)).toList();
        return [Mask(count: jsonMap['count'] as int, stores: stores)]; // Create Mask object with count and stores
      } else {
        throw Exception('마스크 정보를 가져오는 데 실패했습니다. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('마스크 정보를 가져오는 데 실패했습니다. 에러: $e');
    }
  }
}