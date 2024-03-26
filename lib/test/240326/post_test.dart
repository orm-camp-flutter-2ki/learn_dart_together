import 'package:learn_dart_together/240326/repository/post_repository.dart';
import 'package:test/test.dart';

void main() {
  test('post Test', () async {
    final repository = PostRepositoryImpl();
    final page = await repository.getPostsPage(1, 3);
    print(page);
  });
}
