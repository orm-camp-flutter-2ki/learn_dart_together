import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/comment.dart';

class CommentApi {
  Future<List<Comment>> getComments() async {
    String uri = 'https://jsonplaceholder.typicode.com/comments';

    final response = await http.get(Uri.parse(uri));

    try {
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List;

        return jsonData.map((e) => Comment.fromJson(e)).toList();
      } else {
        throw Exception('과제 1 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return Future.error('과제 1 ERROR: $e');
    }
  }
}
