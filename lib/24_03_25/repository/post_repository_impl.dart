import 'package:learn_dart_together/24_03_25/model/post_model.dart';
import 'package:learn_dart_together/24_03_25/repository/interface/post_repository.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PostRepositoryImpl implements PostRepository{
  final String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<List<PostModel>> getPagePosts(int page, int limit) async {
    final Uri uri = Uri.parse(baseUrl).replace(queryParameters: {'_page': '$page', '_limit': '$limit'});
    return _fetchPosts(uri);
  }

  @override
  Future<PostModel> getPost(int id) async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));
    if (response.statusCode == 200) {
      return PostModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('통신 오류');
    }
  }

  @override
  Future<List<PostModel>> getPosts() async {
    final Uri uri = Uri.parse(baseUrl);
    return _fetchPosts(uri);
  }

  Future<List<PostModel>> _fetchPosts(Uri uri) async {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body) as List;
      return jsonList.map((jsonData) => PostModel.fromJson(jsonData)).toList();
    } else {
      throw Exception('통신 오류');
    }
  }
  
}

void main() async {
  final posts = await PostRepositoryImpl().getPagePosts(1, 3);
  final posts2 = await PostRepositoryImpl().getPost(1);
  final posts3 = await PostRepositoryImpl().getPosts();
  print(posts);
  // print(posts2);

}