import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/photo_dto.dart';

class PhotoApi {
  final _baseUrl = 'https://pixabay.com/api';

  Future<List<HitsDto>> getPhoto(String query) async {
    final String apiKey = '43171021-f50a4afae94abce23d49af9e9';
    final http.Response response = await http
        .get(Uri.parse('$_baseUrl/?key=$apiKey&q=$query&image_type='));

    // *json데이터를 Map형태로 변환
    final Map<String, dynamic> json = jsonDecode(response.body);
    final List resultJson = json['hits'];

    final photoList = resultJson.map((e) => HitsDto.fromJson(e)).toList();

    return photoList;
  }
}
// Your API key: 43171021-f50a4afae94abce23d49af9e9
// https://pixabay.com/api/

//Get
// STEP1. get요청 (인자
// - Parameter q:
//   A URL encoded search term. If omitted, all images are returned.
//   This value may not exceed 100 characters.Example: "yellow+flower".
// - Parameter type:
//   Filter results by image type.
//   Accepted values: "all", "photo", "illustration", "vector"
//   Default: "all"
