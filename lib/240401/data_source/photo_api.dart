import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/photo_dto.dart';

class PhotoApi {
  final _apiKey = '43171149-b85451398b6dac85b416bf15e';
  final _baseUrl = 'https://pixabay.com/api';
  Future<List<PhotoDto>> getPhotos(String keyword) async {
    final http.Response response =
      await http.get(Uri.parse('$_baseUrl/?key=$_apiKey&q=$keyword'));

    final List hitsJson = jsonDecode(response.body)['hits'];
    final photoDtoList = hitsJson.map((e) => PhotoDto.fromJson(e)).toList();

    return photoDtoList;

  }
}