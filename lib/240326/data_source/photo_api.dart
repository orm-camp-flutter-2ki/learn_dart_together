import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/photo.dart';
import '../repository/photo_repository.dart';
import '../repository/photo_repository_implements.dart';

class PhotoApi {
  Future<List<Photo>> getPhotos(int albumId) async {
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/photos?albumId=$albumId'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Photo.fromJson(json)).toList();
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}

void main() async {
  PhotoRepository photoRepo = PhotoRepositoryImpl();
  final result = await photoRepo.getPhotos(5);
  print(result);
}

//연습문제 3번
