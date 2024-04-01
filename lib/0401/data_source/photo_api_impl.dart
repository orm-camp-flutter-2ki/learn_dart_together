import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0401/data_source/photo_api.dart';

import '../dto/photo_dto.dart';

class PhotoApiImpl implements PhotoApi{
  final http.Client _client;

  PhotoApiImpl({http.Client? client}) : _client = client ?? http.Client();

  final String _baseUrl = 'https://pixabay.com/api';
  final String _key = '?key=43171029-fc2a9eba4c013488859af10f8';
  final String _imageType = '&image_type=photo';

  @override
  Future<List<PhotoDto>> getPhotosApi(String query) async {
    try {
      final http.Response response =
          await _client.get(Uri.parse('$_baseUrl/$_key&q=$query$_imageType'));

      if (response.statusCode == 200) {
        Map<String, dynamic> json =
            await jsonDecode(utf8.decode(response.bodyBytes));

        List jsonList = json['hits'];

        return jsonList.map((e) => PhotoDto.fromJson(e)).toList();
      } else {
        throw Exception(
            'networkError\n${response.statusCode} ${response.reasonPhrase}');
      }
    } catch (error) {
      throw Exception('unknownError\n$error');
    }
  }
}
