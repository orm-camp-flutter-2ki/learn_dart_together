import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/model/store.dart';

class MaskApi {
  final String _uri = 'http://104.198.248.76:3000/mask';
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Store>> getMaskStores() async {
    final response = await _client.get(Uri.parse(_uri));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData =
          jsonDecode(utf8.decode(response.bodyBytes));
      final jsonList = jsonData['stores'] as List;
      final storeList = jsonList.map((e) => Store.fromJson(e)).toList();

      return storeList;
    } else {
      throw Exception('Mask ERROR: HTTP Status Code ${response.statusCode}');
    }
  }
}
