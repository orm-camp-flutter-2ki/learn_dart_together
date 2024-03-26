import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_26/repository/task1_comment_repository.dart';
import 'package:learn_dart_together/24_03_26/model_class/task1_comment.dart';

void main() {
  group('CommentRepositoryImpl 테스트', () {
    test('getComment 는 comments 리스트를 리턴 하는가?', () async {
      final repository = CommentRepositoryImpl();
      final postId = 1;

      final comments = await repository.getComment(postId);

      expect(
          comments,
          isA<
              List<
                  Comment>>()); // isA는 주어진 값이 특정 클래스 또는 유형의 인스턴스인지를 확인하기 위한 함수 중에 하나 뭔가 신기하게 생겼다
    });

    test('getComment 는 유효한 postId를 리턴 하는가?', () async {
      final repository = CommentRepositoryImpl();
      final postId = 1;

      final comments = await repository.getComment(postId);

      expect(comments, isNot(isEmpty));
      expect(comments.every((comment) => comment.postId == postId), isTrue);
    });

    test('getComment 는 잘못된 postId에 대한 빈 배열을 반환 하는가?', () async {
      final repository = CommentRepositoryImpl();
      final postId = -1;

      final comments = await repository.getComment(postId);

      expect(comments, isEmpty);
    });
  });
}
