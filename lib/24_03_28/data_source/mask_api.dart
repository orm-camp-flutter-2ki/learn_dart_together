import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/mask_dto.dart';

class MaskApi {
  final http.Client _client;
  final String urlBase = 'http://104.198.248.76:3000/mask';

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<StoreDto>> getStores() async {
    final response = await _client.get(Uri.parse(urlBase));
    List<StoreDto> results = [];

    if (response.statusCode == 200) {
      final Map<String, dynamic> json =
          jsonDecode(utf8.decode(response.bodyBytes));

      final List<dynamic> jsonList = json['stores'];
      results = jsonList.map((e) => StoreDto.fromJson(e)).toList();
    } else {
      throw Exception('실패!');
    }
    return results;
  }
}

void main() async {
  final maskApi = MaskApi(client: http.Client());
  final stores = await maskApi.getStores();
  print(stores);
}
