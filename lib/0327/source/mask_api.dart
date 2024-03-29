import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0327/dto/mask_dto.dart';
import 'package:learn_dart_together/0327/dto/stores_dto.dart';
import 'package:learn_dart_together/0327/mapper/mask_mapper.dart';
import 'package:learn_dart_together/0327/mapper/store_mapper.dart';
import 'package:learn_dart_together/0327/model/store.dart';

import '../model/mask.dart';

class MaskApi {
  // test 용 mockClient 객체 사용
  final http.Client _client;

  MaskApi({http.Client? client}) : _client = client ?? http.Client();

  /// Mask로 리턴할 경우
  Future<Mask> getMaskApi() async {
    // api 에서는 Dto를 타입으로 받고 repositoryimpl 에서 model로 반환
    final http.Response response =
        await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));

    return (MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)))
        .toMask()); // 한글 깨짐 버그 수정
  }
}
// 위 return 코드에서
// (MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes))) 소괄호는 MaskDto,
// .toMask 사용 가능, 결과적으로 Mask 로 리턴

/// MaskDto로 리턴할 경우
//   Future<MaskDto> getMaskApi() async {
//     // api 에서는 Dto를 타입으로 받고 repositoryimpl 에서 model로 반환
//     final http.Response response =
//         await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));
//
//     return MaskDto.fromJson(
//         jsonDecode(utf8.decode(response.bodyBytes))); // 한글 깨짐 버그 수정
//   }
