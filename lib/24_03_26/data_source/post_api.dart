import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/post.dart';

class PostApi {
  Future<List<Post>> getPosts() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final jsonList = jsonDecode(response.body) as List;
    final List<Post> postList = jsonList.map((e) => Post.fromJson(e)).toList();

    return postList;
  }
}
