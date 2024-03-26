import 'dart:convert';

import 'package:learn_dart_together/240326/model/photo.dart';
import 'package:learn_dart_together/240326/repository/photo_repository.dart';
import 'package:learn_dart_together/240326/service/http_service.dart';

class PhotoRepositoryImpl implements PhotoRepository{

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/photos/?albumId=$albumId');
    final List jsonList = jsonDecode(result);

    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }
}