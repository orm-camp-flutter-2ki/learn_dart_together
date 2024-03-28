import 'dart:convert';

import 'package:learn_dart_together/24_03_28/mask/mapper/mask_mapper.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:learn_dart_together/repository/mask_repository.dart';

import '../24_03_27/mask.dart';
import '../24_03_27/store.dart';
import '../24_03_28/mask/dto/mask_dto.dart';
import '../http/custom_http_client.dart';

class MaskRepositoryImpl implements MaskRepository {
  final CustomHttpClient _httpService;

  MaskRepositoryImpl(this._httpService);

  @override
  Future<Mask> getMask() async {
    try {
      final response = await _httpService.get(maskUrl);
      MaskDto maskDto =
          MaskDto.fromJson(jsonDecode(response) as Map<String, dynamic>);

      return maskDto.toMask();
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<List<Store>> getStores() async {
    List<Store> stores = [];
    try {
      final response = await getMask();
      if (response.stores.isNotEmpty) {
        stores = response.stores.where((e) => e.isValid()).toList();
      }
    } catch (e) {
      print(e);
      rethrow;
    }
    return stores;
  }
}
