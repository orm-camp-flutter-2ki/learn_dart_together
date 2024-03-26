import 'package:learn_dart_together/24_03_26/model/dt_photo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId);
}

class PhotoRepositoryImpl implements PhotoRepository {
  final baseUri = 'https://jsonplaceholder.typicode.com/photos';

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
        (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList
        .where((element) => element['albumId'] == albumId)
        .map((e) => Photo.fromJson(e))
        .toList();
  }
}
