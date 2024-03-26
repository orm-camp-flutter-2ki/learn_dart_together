import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model_class/task3_photo.dart';

class PhotoApi {
  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response res = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/photos?albumId=$albumId'));

    List jsonList = jsonDecode(res.body) as List;
    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}

void main() async {
  PhotoApi test = PhotoApi();
  print(await test.getPhotos(1));
}
