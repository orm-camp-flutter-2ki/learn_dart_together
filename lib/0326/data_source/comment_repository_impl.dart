import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0326/data_source/comment_repository.dart';
import 'package:learn_dart_together/0326/model/comment.dart';

class CommentRepositoryImpl implements CommentRepository {

  @override
  Future<List<Comment>> getComments(int postId) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=$postId'));
    List<Comment> commentList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      commentList = jsonList.map((e) => Comment.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return commentList;
  }
}