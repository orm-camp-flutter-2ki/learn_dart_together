import 'dart:convert';
import 'package:learn_dart_together/24_03_28/http/http.dart';
import 'package:learn_dart_together/24_04_01/image_search/data_source/image_api.dart';
import 'package:learn_dart_together/24_04_01/image_search/dto/image_dto.dart';

class ImageApiImpl implements ImageApi {
  static const _baseUrl = 'https://pixabay.com/api/';
  static const _apiKey = '43170933-153441fa8bf4446a6ff68882e';
  final Http _http;

  ImageApiImpl({required http}) : _http = http;

  @override
  Future<ImageDto> getImages(String q, String imageType) async {
    final Map<String, String> queryParams = {
      'key': _apiKey,
      'q': q,
      'image_type': imageType,
    };
    final response = await _http.get(Uri.parse(_baseUrl).replace(queryParameters: queryParams));
    final imageMap = response.statusCode != 200 ? throw Exception('오류') : jsonDecode(response.body);
    return ImageDto.fromJson(imageMap);
  }
}
