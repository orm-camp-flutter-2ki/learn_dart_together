import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0326/model/comment_model.dart';
import 'package:learn_dart_together/0326/repository/comment_repository.dart';

import '../source/comment_api.dart';

void main() async {
  final CommentRepository commentRepository = CommentRepositoryImpl();

  // List<Comment> comments = await commentRepository.getComments();
  List<Comment> comment = await commentRepository.getComment(1);
  // comments.forEach((print));
  comment.forEach((print));
}

class CommentRepositoryImpl implements CommentRepository {
  final _api = CommentApi();

  @override
  // http.get()을 사용하여 특정 postId에 해당하는 데이터를 가져오는 메서드
  Future<List<Comment>> getComment(int postId) async {
    return _api.getCommentApi(1);
  }

  @override
  // http.get()을 사용하여 웹 서버에서 데이터를 가져오는 메서드
  Future<List<Comment>> getComments() async {
    return _api.getCommentsApi();
  }
}
