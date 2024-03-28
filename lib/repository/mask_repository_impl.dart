import 'dart:convert';

import 'package:learn_dart_together/24_03_28/dto/mask_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/maskMapper.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:learn_dart_together/repository/mask_repository.dart';

import '../24_03_27/mask.dart';
import '../http/custom_http_client.dart';

class MaskRepositoryImpl implements MaskRepository {
  final CustomHttpClient _httpService;

  MaskRepositoryImpl(this._httpService);

  @override
  Future<Mask> getMask() async {
    final response = await _httpService.get(maskUrl);
    MaskDto maskDto =
        MaskDto.fromJson(jsonDecode(response) as Map<String, dynamic>);

    return maskDto.toMask();
  }
}
