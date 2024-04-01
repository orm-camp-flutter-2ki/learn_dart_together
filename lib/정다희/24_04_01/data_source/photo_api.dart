import 'dart:convert';

import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_01/dto/Photo_dto.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  Future<List<PhotoDto>> getPhotos(String query) async {
    final newQuery = query.split(' ').join('+');
    ;
    final String _key = "43171111-366b0925b3580dd2929321c33";
    final list = await http
        .get(Uri.parse("https://pixabay.com/api/?key=$_key&$newQuery"));
    if (list.statusCode == 200) {
      final List resList = jsonDecode(list.body)["hits"];
      return resList.map((e) => PhotoDto.fromJson(e)).toList();
    } else {
      throw Exception('api 받아오다가 사망');
    }
  }
}
