import '../../240326/data_source/comment.dart';
import '../../240326/model/comment_api.dart';
import '../../240326/repository/comment_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('CommentApi.getComments 메소드를 호출한다', () async {
    // Given
    final sol = Comment(
      postId: 1,
      id: 1,
      name: 'id labore ex et quam laborum',
      email: 'Eliseo@gardner.biz',
      body: 'laudantium enim quasi est quidem magnam voluptate ipsam eos\n'
          'tempora quo necessitatibus\n'
          'dolor quam autem quasi\n'
          'reiciendis et nam sapiente accusantium',
    );
    // When
    final result = await CommentRepositoryImpl().getComments(1);

    // Then
    expect(result.first, sol);
  });
}
