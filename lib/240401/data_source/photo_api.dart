import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240401/dto/photo_search_dto.dart';

class PhotoApi {
  final _baseUrl = 'https://pixabay.com/api';
  final _apiKey = '43170942-b9dece8ced5a92d9f6106fa6e';
  final http.Client _client;

  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<PhotoSearchDto> getPhotoSearch(String query) async {
    final response = await _client.get(Uri.parse('$_baseUrl/?key=$_apiKey&q=$query'))
        .onError((error, stackTrace) => throw Exception('Api Error: $error'));

    final photoSearchDto = response.statusCode == 200
        ? PhotoSearchDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)))
        : throw Exception('Api Error: statusCode:${response.statusCode}');

    return photoSearchDto;
  }
}