import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/photo.dart';

class PhotosApi {
  Future<List<Photo>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    // List<Photo> data = [];

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body) as List;

      List<Photo> data = json.map((json) => Photo.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
