import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/comment.dart';

class CommentsApi {
  Future<List<Comment>> getComments(int postId) async {
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/comments?postId=$postId'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Comment.fromJson(json)).toList();
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
