import 'package:learn_dart_together/24_03_27/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_27/dto/store_dto.dart';
import 'package:learn_dart_together/24_03_27/mapper/mask_mapper.dart';
import 'package:learn_dart_together/24_03_27/mapper/store_mapper.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/store.dart';

class MaskApi {
  Future<Mask> getMask() async {
    var url = 'http://104.198.248.76:3000/mask';

    var response = await http.get(Uri.parse(url));

    final Map<String, dynamic> json = jsonDecode(
        utf8.decode(response.bodyBytes)); //jsondecode 는 제이슨을 맵이나 리스트 바꾼다.

    return MaskDto.fromJson(json).toMask();
  }
}
