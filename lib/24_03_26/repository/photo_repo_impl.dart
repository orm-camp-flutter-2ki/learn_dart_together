import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:learn_dart_together/24_03_26/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final url = 'https://jsonplaceholder.typicode.com/photos';

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    List<dynamic> selected =
        jsonList.where((photo) => photo['albumId'] == albumId).toList();

    return selected.map((e) => Photo.fromJson(e)).toList();
  }
}
