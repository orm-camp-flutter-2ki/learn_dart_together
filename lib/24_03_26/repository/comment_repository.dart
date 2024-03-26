import '../model/dt_comment.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}

class CommentRepositoryImpl implements CommentRepository {
  final baseUri = 'https://jsonplaceholder.typicode.com/comments';

  @override
  Future<List<Comment>> getComments(int postId) async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
        (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList
        .where((element) => element['postId'] == postId)
        .map((e) => Comment.fromJson(e))
        .toList();
  }
}
