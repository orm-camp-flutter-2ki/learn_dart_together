import 'dart:convert';

import 'package:learn_dart_together/24_03_26/repository/03_photo_repository.dart';

import '../model/03_photo.dart';
import 'package:http/http.dart' as http;

void main() async {
  final photo = await PhotoRepositoryImpl().getPhotos(10);
  print(photo);
}

class PhotoRepositoryImpl implements PhotoRepository{
  @override
  Future<Photo> getPhotos(int albumId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$albumId'));

    final Map<String, dynamic> json = jsonDecode(response.body);

    return Photo.fromJson(json);
  }
}
