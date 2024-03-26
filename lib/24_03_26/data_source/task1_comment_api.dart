import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model_class/task1_comment.dart';

class CommentApi {
  Future<List<Comment>> getComments(int postId) async {
    final http.Response res = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/comments?postId=$postId'));

    List jsonList = jsonDecode(res.body) as List;
    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }
}

void main() async {
  CommentApi test = CommentApi();
  print(await test.getComments(1));
}
