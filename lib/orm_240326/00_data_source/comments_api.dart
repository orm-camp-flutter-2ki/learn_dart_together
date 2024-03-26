import 'dart:convert';

import 'package:http/http.dart' as http;

import '../comments.dart';

class CommentsApi {
  final urlBase = 'https://jsonplaceholder.typicode.com/comments';

  Future<List<Comments>> getComments(int postId) async {
    final response = await http.get(Uri.parse('$urlBase?postId=$postId'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Comments.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }
}
