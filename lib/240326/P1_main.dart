import 'package:learn_dart_together/240326/model_class/p1_model_class.dart';

import 'repository/p1_comment_repository.dart';

void main() async {
  final p1Repository = P1Repository();

  final List<Comment> comments = await p1Repository.getComments(1);
  print(comments);
}
