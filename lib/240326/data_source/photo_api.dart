import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/photo.dart';

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }

  Future<List<Photo>> getPhotosAlbum(int albumId) async {
    final http.Response response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/photos?albumId=$albumId'));
    // dynamic
    List jsonList = jsonDecode(response.body);
    // 타입 변환
    List<Photo> photos = jsonList.map((e) => Photo.fromJson(e)).toList();
    return photos;
  }

  Future<Photo> getPhoto(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$id'));
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Photo.fromJson(json);
  }
}
