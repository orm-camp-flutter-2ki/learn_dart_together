import 'package:learn_dart_together/240326/data_source/json_place_holder_api.dart';

import '../model/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}

class CommentRepositoryImpl implements CommentRepository {
  final _api = JsonPlaceHolderApi();

  @override
  Future<List<Comment>> getComments(int postId) async {
    final comments = await _api.getComments();
    return comments.where((e) => e.postId == postId).toList();
  }
}
