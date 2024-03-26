import 'dart:convert';

import 'package:learn_dart_together/240326/model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    String uri = 'https://jsonplaceholder.typicode.com/photos';

    final response = await http.get(Uri.parse(uri));

    try {
      if (response.statusCode == 200) {
        final List jsonData = jsonDecode(response.body);

        return jsonData.map((e) => Photo.fromJson(e)).toList();
      } else {
        throw Exception('과제 3 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return [];
    }
  }
}
