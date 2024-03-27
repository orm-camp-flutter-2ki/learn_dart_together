import 'package:dart_cli_practice/240326/model/comment.dart';
import 'package:dart_cli_practice/240326/repository/comment_repository.dart';
import 'package:dart_cli_practice/240326/repository/comment_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final expectComment = Comment(
    postId: 1,
    id: 1,
    name: 'id labore ex et quam laborum',
    email: 'Eliseo@gardner.biz',
    body:
        'laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium',
  );

  group('CommentRepositoryImpl 는', () {
    test('getComments(postId) 메소드로 postId에 해당하는 Comment를 가져온다.', () async {
      CommentRepository commentRepository = CommentRepositoryImpl();

      final actualComment = await commentRepository.getComments(1);
      expect(actualComment[0], equals(expectComment));
    });
  });
}
