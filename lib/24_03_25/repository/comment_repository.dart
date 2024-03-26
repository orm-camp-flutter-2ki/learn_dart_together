import 'package:learn_dart_together/24_03_25/model/comment_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CommentRepository {
  Future<List<CommentModel>> getComments(int postId) async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=$postId'));

    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body) as List;
      return jsonList.map((e) => CommentModel.fromJson(e)).toList();
    } else {
      throw Exception('통신 실패');
    }
  }
}