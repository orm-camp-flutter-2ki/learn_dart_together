import 'package:learn_dart_together/orm_240326/00_data_repository/comments_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_source/comments_api.dart';

import '../model/comments.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  final CommentsApi _api = CommentsApi();

  @override
  Future<List<Comments>> getComments(int postId) async {
    final result = await _api.getComments(postId);
    return result;
  }
}
