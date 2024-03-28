import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_27/apis/mask_api.dart';
import 'package:learn_dart_together/24_03_27/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_27/mapper/mask_mapper.dart';
import 'package:learn_dart_together/24_03_27/model/mask.dart';

class MaskApiImpl implements MaskApi {
  static const String baseUrl = 'http://104.198.248.76:3000';
  final HttpProxy http;

  MaskApiImpl({required this.http});

  @override
  Future<Mask> getMask() async {
    final response = await http.get(Uri.parse('$baseUrl/mask'));
    if (response.statusCode != 200) {
      throw Exception('Failed to get mask ::message:: ${response.body}');
    }

    return MaskDto.fromJson(
            jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>)
        .toMask();
  }
}
