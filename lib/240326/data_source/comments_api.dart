import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/datamodel/comment.dart';

class CommentsApi {
  Future<List<Comment>> getComments() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    final List jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }
}
/*
void main(){
  CommentsApi commentsApi =CommentsApi();
  commentsApi.getStocks();

}*/