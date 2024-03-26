import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0326/data_source/photo_repository.dart';
import 'package:learn_dart_together/0326/model/photo.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos?albumId=$albumId'));
    List<Photo> photoList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      photoList = jsonList.map((e) => Photo.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return photoList;
  }
}