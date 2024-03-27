import 'dart:html';

import 'package:learn_dart_together/240326/repository/comment_repository.dart';
import 'package:test/test.dart';

main() {
  test('comment test', () async {
    final repo = CommentRepository();
    final comment = await repo.getComments(3);

    final bool result1 = comment.postId == 1;
    final bool result2 = comment.id == 3;
    final bool result3 = comment.name == 'odio adipisci rerum aut animi';
    final bool result4 = comment.email == 'Nikita@garfield.biz';
    final bool result5 = comment.body == 'laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium';

    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
    expect(result4, isTrue);
    expect(result5, isTrue);
  });
}
