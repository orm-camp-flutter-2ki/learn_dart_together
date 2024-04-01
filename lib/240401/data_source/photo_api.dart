import 'dart:convert';

import '../dto/photo_dto.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  final http.Client _client;
  String _baseUrl = 'https://pixabay.com/api';
  String _keyValue = ''; //공개 깃허브라 키값 지웠습니다.;

  PhotoApi({http.Client? client}) : _client = client ?? http.Client();

  Future<PhotoDto> getPhotos(String query) async {
    final response = await _client.get(Uri.parse(
        '$_baseUrl/?key=$_keyValue&q=${query}&image_type=photo&pretty=true'));

    final jsonMap = response.statusCode != 200
        ? throw Exception("오류남")
        : jsonDecode(response.body);

    //final jsonList = jsonMap['stores'] as List;
    return PhotoDto.fromJson(jsonMap);
  }
}
