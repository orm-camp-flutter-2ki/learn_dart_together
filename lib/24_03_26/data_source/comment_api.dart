import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/comment.dart';

class CommentApi {
  final String url = 'https://jsonplaceholder.typicode.com/comments';

  Future<List<Comment>> getComments(int postId) async {
    final http.Response response =
        await http.get(Uri.parse('$url/?postId=$postId'));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Comment.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }
}
