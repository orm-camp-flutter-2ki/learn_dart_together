import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/Model/comment.dart';

class CommentApi {
  Future<List<Comment>> getComments() async {
    final http.Response result = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    if (result.statusCode == 200) {
      final List resList = jsonDecode(result.body);
      return resList.map((e) => Comment.fromJson(e)).toList();
    } else {
      throw Exception('api 받아오는 중 에러발생');
    }
  }

  //여기서 필터링 하는게 맞나...? 아님 repository 에서 해야하는건가 ????
  Future<List<Comment>> getCommentById(int postId) async {
    final http.Response result = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    if (result.statusCode == 200) {
      final List resList = jsonDecode(result.body);
      return resList
          .where((element) => element["postId"] == postId)
          .map((e) => Comment.fromJson(e))
          .toList();
    } else {
      throw Exception('api 받아오는 중 에러발생');
    }
  }
}
