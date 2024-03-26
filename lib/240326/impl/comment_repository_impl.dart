import 'dart:convert';

import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:learn_dart_together/240326/repository/comment_repository.dart';
import 'package:learn_dart_together/240326/service/http_service.dart';

class CommentRepositoryImpl implements CommentRepository{

  @override
  Future<List<Comment>> getComments(int postId) async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/comments/?postId=$postId');
    final List jsonList = jsonDecode(result);

    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }

}