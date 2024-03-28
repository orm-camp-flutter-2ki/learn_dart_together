import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/01_comments.dart';
import 'package:learn_dart_together/24_03_26/repository/01_comment_repository_Impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  test('과제 1. CommentRepository 작성 연습 1', () async {
    //given
    final repository = CommentRepositoryImpl();
    final comments = await repository.getComments(5);

    //when
    final commentsId = comments.id;

    //then
    expect(commentsId == 5, true);
  });
}
