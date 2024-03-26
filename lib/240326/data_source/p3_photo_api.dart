import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model_class/p3_model_class.dart';

class PhotoApi {
  Future<List<Photo>> getPhotoApi(int albumId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List jsonList = await jsonDecode(response.body);
    List<Photo> filteredPhotos = jsonList
        .map((e) => Photo.fromJson(e))
        .where((photo) => photo.albumId == albumId)
        .toList();

    return filteredPhotos;
  }
}
// Future<List<Comment>> getCommentsBy(int postId) async {
//   final http.Response response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
//
//   List jsonList = await jsonDecode(response.body);
//   List<Comment> filteredComments = jsonList
//       .map((e) => Comment.fromJson(e))
//       .where((comment) => comment.postId == postId)
//       .toList();
//
//   return filteredComments;
// }
