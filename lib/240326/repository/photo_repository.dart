import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/vo/photo.dart';

class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId) async {
    // 이것만 따로 빼는 방법
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List jsonList = jsonDecode(response.body);
    // List<dynamic> -> List<Albums>
    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}
