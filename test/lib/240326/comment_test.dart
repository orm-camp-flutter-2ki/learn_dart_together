import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:learn_dart_together/240326/repository/comment_repository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  CommentRepository repository = CommentRepository();

  test('과제 1. Repository 작성 연습 1', () async {

    // Given
    final postId = 1;
    final data = await repository.getComments(postId);

    Map<String, dynamic> expectedData = {
        "postId": 1,
        "id": 1,
        "name": "id labore ex et quam laborum",
        "email": "Eliseo@gardner.biz",
        "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
      };

    // When
    final actualData = Comment(data.first.postId, data.first.id, data.first.name, data.first.email, data.first.body).toJson();

    // Then
    expect(DeepCollectionEquality().equals(actualData, expectedData), true);
  });
}
