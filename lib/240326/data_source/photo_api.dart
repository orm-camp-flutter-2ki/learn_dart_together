import 'dart:convert';

import 'package:dart_cli_practice/240326/model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List jsonList = jsonDecode(response.body);
    
    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}
