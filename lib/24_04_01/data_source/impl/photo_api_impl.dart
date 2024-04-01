import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_04_01/config/pixabay_config.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_response_dto.dart';

import '../interface/photo_api.dart';

class PhotoApiImpl implements PhotoApi {
  final HttpProxy _http;

  PhotoApiImpl({required http}) : _http = http;

  @override
  Future<PhotoResponseDto> getPhotos(String query) async {
    try {
      final response = await _http.get(Uri.parse(
          '${PixabayConfig.pixabayUrl}/?key=${PixabayConfig.apiKey}&$query'));
      if (response.statusCode != 200) {
        throw Exception('Failed to load photos');
      }
      return PhotoResponseDto.fromJson(
          jsonDecode(utf8.decode(response.bodyBytes)));
    } catch (e) {
      rethrow;
    }
  }
}
