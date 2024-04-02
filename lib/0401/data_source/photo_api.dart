import 'dart:convert';
import 'package:http/http.dart' as http;

import '../dto/photo_list_info_dto.dart';
import '../env.dart';

class PhotoApi {
  final http.Client _client;
  final String _baseUrl = 'https://pixabay.com/api';

  PhotoApi({required http.Client client}) : _client = client;

  Future<PhotoListInfoDto> getPhotoListInfoDto(String query) async {
    final http.Response response = await _client.get(
        Uri.parse('$_baseUrl/?key=$PIXABAY_API_KEY&q=$query&image_type=photo'));
    Map<String, dynamic> decodedJson = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Request failed with status: ${response.statusCode}.');
    return PhotoListInfoDto.fromJson(decodedJson);
  }
}