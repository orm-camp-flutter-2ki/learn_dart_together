import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';

import '../model/photo.dart';

class PhotoApi {
  final _apiKey = '43171222-7a3225b5e0362fe86d58bbfa3';

  final _baseUrl = 'https://pixabay.com/api';

  Future<List<PhotoDto>> getPhoto(String keyword) async {
    //
    final http.Response response =
        await http.get(Uri.parse('$_baseUrl/?key=$_apiKey&q=$keyword'));

    final List hitsJson = jsonDecode(response.body)['hits'];
    final photoDtoList = hitsJson.map((e) => PhotoDto.fromJson(e)).toList();

    return photoDtoList;
  }
}
