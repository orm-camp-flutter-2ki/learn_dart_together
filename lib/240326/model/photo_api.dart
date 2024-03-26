import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_source/photo.dart';

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    final jsonlist = jsonDecode(response.body) as List;
    return jsonlist.map((e) => Photo.fromJson(e)).toList();
  }
}
