import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/photo_model.dart';

class PhotoApi {
  Future<List<Photo>> getPhotosApi(int albumId) async {
    final http.Response response;
    try {
      response = await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/photos?albumId=$albumId')); // 쿼리 스트링 사용
    } catch (error) {
      print('[Error]\n$error');
      return [];
    }

    final List json = await jsonDecode(response.body);
    return json.map((e) => Photo.fromJson(e)).toList();
  }
}
