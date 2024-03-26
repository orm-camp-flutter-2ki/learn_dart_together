import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240326/00_data_repository/all_repository.dart';

import '../comments.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  final urlBase = 'https://jsonplaceholder.typicode.com/comments';

  @override
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
