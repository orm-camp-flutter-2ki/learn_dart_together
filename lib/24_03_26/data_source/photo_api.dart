import 'dart:convert';
import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    final jsonList = jsonDecode(response.body) as List;

    List<Photo> photoList = jsonList.map((e) => Photo.fromJson(e)).toList();
    return photoList;
  }
}