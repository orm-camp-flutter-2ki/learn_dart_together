import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model_class/02_photo_class.dart';

class PhotoApi {
  Future<List<Photo>> Getphoto() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    final jsonList = jsonDecode(response.body) as List;
    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}
