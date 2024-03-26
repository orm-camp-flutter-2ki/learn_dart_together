import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/comment.dart';
import 'package:learn_dart_together/24_03_26/repository/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final url = 'https://jsonplaceholder.typicode.com/comments';

  @override
  Future<List<Comment>> getComments(int postId) async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    List<dynamic> selected =
        jsonList.where((comment) => comment['postId'] == postId).toList();

    return selected.map((e) => Comment.fromJson(e)).toList();
  }
}
