import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_27/model/mask_store.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_store_dto.dart';

class MaskStoreApi {
  final http.Client _client;

  MaskStoreApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MaskStoreDto> getMaskStore() async {
    final response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));

    if (response.statusCode != 200) {
      throw Exception('네트워크 에러 코드: ${response.statusCode}}');
    }

    final jsonString = jsonDecode(utf8.decode(response.bodyBytes));
    final MaskStoreDto maskStore = MaskStoreDto.fromJson(jsonString);

    return maskStore;
  }
}
