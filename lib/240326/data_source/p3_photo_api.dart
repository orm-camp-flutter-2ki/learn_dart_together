import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model_class/p3_model_class.dart';

class PhotoApi {
  Future<List<Photo>> getPhotoApi(int albumId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List jsonList = await jsonDecode(response.body);
    List<Photo> filteredPhotos = jsonList
        .map((e) => Photo.fromJson(e))
        .where((photo) => photo.albumId == albumId)
        .toList();

    return filteredPhotos;
  }
}
