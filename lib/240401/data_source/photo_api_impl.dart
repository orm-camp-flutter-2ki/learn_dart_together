import 'dart:convert';

import 'package:dart_cli_practice/240401/data_source/photo_api.dart';
import 'package:dart_cli_practice/240401/dto/photo_dto.dart';
import 'package:http/http.dart' as http;

class PhotoApiImpl implements PhotoApi {
  final _apiKey = '43170873-f37e577d19b4e9b1bd2ecc27b';
  final _baseUrl = 'https://pixabay.com/api';

  // PhotoDto : api 요청으로 넘어온 json data가 null 값 또는 이상한 타입의 값이 포함 되어있을 수 있음
  @override
  Future<List<PhotoDto>> getPhotos(String keyword) async {
    final http.Response response =
        await http.get(Uri.parse('$_baseUrl/?key=$_apiKey&q=$keyword'));

    final List hitsJson = jsonDecode(response.body)['hits'];
    final photoDtoList = hitsJson.map((e) => PhotoDto.fromJson(e)).toList();

    return photoDtoList;
  }
}
