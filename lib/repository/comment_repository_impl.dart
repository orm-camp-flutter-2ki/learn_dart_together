import 'dart:convert';

import 'package:learn_dart_together/24_03_26/comment.dart';
import 'package:learn_dart_together/data_source/comment_api.dart';
import 'package:learn_dart_together/repository/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _api = CommentApi();

  @override
  Future<List<Comment>> getCommentsByPostId(int postId) async {
    final response = await _api.getComments(postId);
    List jsonList = jsonDecode(response);

    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }
}
