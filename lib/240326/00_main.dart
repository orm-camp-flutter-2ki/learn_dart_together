import 'package:learn_dart_together/240326/repository/comment_repository.dart';

void main() async {
  CommentRepository repository = CommentRepository();
  final data = await repository.getComments(1);
}