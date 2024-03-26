import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/photo.dart';

class PhotoApi {
  final String _url = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response response =
        await http.get(Uri.parse('$_url?albumId=$albumId'));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Photo.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }
}
