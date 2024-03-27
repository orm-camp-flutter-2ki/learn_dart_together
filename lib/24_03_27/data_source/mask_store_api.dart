import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_27/model/mask_store.dart';

class MaskStoreApi {
  final http.Client _client;

  MaskStoreApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MaskStore> getMaskStore() async {
    final response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));

    if (response.statusCode != 200) {
      throw Exception('네트워크 에러 코드: ${response.statusCode}}');
    }

    final jsonString = jsonDecode(utf8.decode(response.bodyBytes));
    final MaskStore maskStore = MaskStore.fromJson(jsonString);

    return maskStore;
  }
}
