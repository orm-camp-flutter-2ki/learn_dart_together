import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/post/post.dart';
import 'package:learn_dart_together/240326/repository/post/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<Post> getPost(int id) async {
    final response = await http.get(Uri.parse('$_apiUrl/$id'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      return Post.fromJson(jsonData);
    } else {
      throw Exception('Failed to load post with id: $id');
    }
  }

  @override
  Future<List<Post>> getPosts({int? page, int? limit}) async {
    String url = _apiUrl;

    if (page != null && limit != null) {
      if (page < 1) {
        page = 1;
      }
      url += '?_page=$page&_limit=$limit';
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Post.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  // 새로운 메소드 추가: 전체 게시물을 가져오는 메소드
  @override
  Future<List<Post>> getAllPosts() async {
    final response = await http.get(Uri.parse('$_apiUrl'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Post.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load all posts');
    }
  }
}

Future<void> main() async {
  // PostRepositoryImpl 인스턴스 생성
  PostRepositoryImpl postRepository = PostRepositoryImpl();

  try {
    // 모든 게시물 목록 가져오기
    List<Post> allPosts = await postRepository.getAllPosts();
    print('전체 게시물 목록:');
    allPosts.forEach((post) => print(post));

    // 페이지 및 제한을 지정하여 게시물 목록 가져오기
    List<Post> pagedPosts = await postRepository.getPosts(page: -1, limit: 3);
    print('\n페이지별 게시물 목록:');
    pagedPosts.forEach((post) => print(post));
  } catch (e) {
    print('오류: $e');
  }
}
