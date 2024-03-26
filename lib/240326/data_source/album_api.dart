import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/datamodel/comment.dart';

import '../datamodel/album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final List jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }
}
/*
void main(){
  CommentsApi commentsApi =CommentsApi();
  commentsApi.getStocks();

}*/
