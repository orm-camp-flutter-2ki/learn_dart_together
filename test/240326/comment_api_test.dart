import 'package:test/test.dart';
import 'package:untitled2/240326/data_source/comment_api.dart';

void main() {
  test('Comment Test', () async {

    CommentApi commentApi = CommentApi();
    final comments = await commentApi.getComments();
    final comment = await commentApi.getComment(1);
  print(comments);
  });
}