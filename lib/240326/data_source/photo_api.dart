import 'dart:convert';

import 'package:http/http.dart' as http;

import '../datamodel/photo.dart';

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    final List jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}
