import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_26/model/photo.dart';

class PhotoApi {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy http;

  PhotoApi({required this.http});

  Future<List<Photo>> getPhotos() async {
    final response = await http.get(Uri.parse('$baseUrl/photos'));
    return (jsonDecode(response.body) as List)
        .map((e) => Photo.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
