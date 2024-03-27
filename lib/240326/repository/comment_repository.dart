import 'package:learn_dart_together/240326/data_source/comment_api.dart';

import '../model/comment.dart';

class CommentRepository {
  final CommentApi commentApi = CommentApi();

  Future<List<Comment>> getComments(int postId) async {
    if (postId > 0) {
      final dataList = await commentApi.getComments();
      final results = dataList.where((element) => element.postId == postId).toList();

      if (results.isEmpty) {
        return [];
      } else {
        return results;
      }
    } else {
      return [];
    }
  }
}
