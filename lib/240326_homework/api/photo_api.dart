import 'dart:convert';

import 'package:http/http.dart' as http;

import './../model/photo.dart';

void main() async {
  List json = await PhotoApi().getPhotos();
  print(json);
}

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/Photos'));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<Photo> data = json.map((json) => Photo.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
