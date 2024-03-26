import 'dart:convert';

import '../Model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response res = await http
        .get((Uri.parse("https://jsonplaceholder.typicode.com/photos")));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      return resList.map((e) => Photo.fromJson(e)).toList();
    } else {
      throw Exception('api 받다가 에러남');
    }
  }
}
