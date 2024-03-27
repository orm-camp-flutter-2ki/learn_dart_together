import 'dart:convert';

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
    Mask mask = Mask.fromJson(jsonDecode(response) as Map<String, dynamic>);
    print(mask.count);
    return mask;
  }
}
