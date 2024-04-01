import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository.dart';

class PhotoApi {
  final http.Client _client;
  final _baseUrl = 'https://pixabay.com/api/?key=';
  final _apiKey = '43171373-5c54586eb6b3236716e54d34c';
  final _type = '&image_type=photo&pretty=true';

  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<PhotoDto> getPhotos(String query) async {
    final http.Response response = await _client.get(
        Uri.parse('$_baseUrl$_apiKey&q={$query}$_type'));

    if (response.statusCode != 200) {
      throw NetworkError.unknown;
    }

    final json = jsonDecode(response.body);

    return PhotoDto.fromJson(json);
  }
}