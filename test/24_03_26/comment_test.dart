import 'package:learn_dart_together/24_03_26/repository/comment_repository.dart';
import 'package:learn_dart_together/24_03_26/repository/comment_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('Comment test', () async {
    CommentRepository commentRepo = CommentRepositoryImpl();
    final result = await commentRepo.getComments(1);
    print(result);
  });
}
