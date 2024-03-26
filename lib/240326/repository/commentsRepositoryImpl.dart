import 'package:learn_dart_together/240326/data_source/comments_api.dart';
import 'package:learn_dart_together/240326/datamodel/comment.dart';

import 'commentsRepository.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  @override
  Future<List<Comment>> getComments(int postId) async {
    CommentsApi commentsApi = CommentsApi();
    final List<Comment> comments = await commentsApi.getComments();
    List<Comment> postIdComments =
        comments.where((e) => postId.toString() == e.postId).toList();

    return postIdComments;
  }
}
