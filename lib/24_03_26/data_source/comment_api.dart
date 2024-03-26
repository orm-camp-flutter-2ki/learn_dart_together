import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model_class/00_comment_class.dart';

class CommentApi {
  Future<List<Comment>> Getcomment() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    final jsonList = jsonDecode(response.body) as List;
    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }
}
