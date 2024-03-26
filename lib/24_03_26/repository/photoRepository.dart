import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dataClass/photo.dart';

class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List jsonList = jsonDecode(response.body);

    return jsonList
        .where((e) => e['albumId'] == albumId)
        .map((e) => Photo.fromJson(e))
        .toList(); //
  }
}

void main() async {
  PhotoRepository test = PhotoRepository();
  final a = await test.getPhotos(1);
  print(a);
}
