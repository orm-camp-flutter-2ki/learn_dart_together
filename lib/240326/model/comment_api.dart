import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/data_source/comments.dart';

class CommentApi {
  Future<List<Comment>> getComments() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    final jsonlist = jsonDecode(response.body) as List;

    return jsonlist.map((e) => Comment.fromJson(e)).toList();
  }
}
