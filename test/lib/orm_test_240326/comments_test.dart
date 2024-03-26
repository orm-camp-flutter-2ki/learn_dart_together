import 'package:learn_dart_together/orm_240326/00_data_repository/comments_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/comments_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('comments(postId) test', () async {
    final CommentsRepository commentsRo = CommentsRepositoryImpl();
    final results = await commentsRo.getComments(1);
    // print(results);
    expect(results.length, 5);
  });
}
