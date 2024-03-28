import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/dto/store_dto.dart';

class MaskApi {
  final _url = 'http://104.198.248.76:3000/mask';

  Future<MaskDto> getMask() async {
    final http.Response response = await http.get(Uri.parse(_url));

    final decoded = utf8.decode(response.bodyBytes); // 한글 깨짐 방지

    final json = jsonDecode(decoded);

    return MaskDto.fromJson(json);
  }

  Future<List<StoreDto>> getStores() async {
    final http.Response response = await http.get(Uri.parse(_url));
    final decoded = jsonDecode(utf8.decode(response.bodyBytes));

    final jsonList = decoded['stores'] as List;

    return jsonList.map((e) => StoreDto.fromJson(e)).toList();
  }
}
