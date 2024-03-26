import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0326/model/comment_model.dart';
import 'package:learn_dart_together/0326/repository/comment_repository.dart';

class CommentApi {
  // http.get()을 사용하여 웹 서버에서 데이터를 가져오는 메서드
  Future<List<Comment>> getCommentsApi() async {
    final http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    } catch (error) {
      print('[Error]\n$error');
      return []; // 예외가 발생하면 빈 리스트를 반환하거나 다른 처리할 수 있다.
    }

    final List json = await jsonDecode(response.body);
    return json.map((e) => Comment.fromJson(e)).toList();
  }

  // http.get()을 사용하여 특정 postId에 해당하는 데이터를 가져오는 메서드
  Future<List<Comment>> getCommentApi(int postId) async {
    final http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    } catch (error) {
      print('[Error]\n$error');
      return []; // 예외가 발생하면 빈 리스트를 반환하거나 다른 처리할 수 있다.
    }

    final List json = await jsonDecode(response.body);

    // 특정 postId에 해당하는 댓글만
    final List postIdCommentsList =
        json.where((element) => element['postId'] == postId).toList();

    return postIdCommentsList.map((e) => Comment.fromJson(e)).toList();
  }
}
