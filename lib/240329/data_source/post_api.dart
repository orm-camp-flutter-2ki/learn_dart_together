import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/post_dto.dart';
import '../model/post.dart';

class PostApi {
  final uri = 'https://jsonplaceholder.typicode.com';

  Future<Post> getPost(int id) async {
    final http.Response response = await http.get(Uri.parse('$uri/posts/$id'));
    final Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('에러 확인');
    return Post.fromJson(json);
  }

  Future<bool> deletePost(int postId) async {
    final http.Response response =
        await http.delete(Uri.parse('$uri/posts/$postId'));

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception(response.statusCode);
    }
  }

  Future<List<Post>> getPostAll() async {
    final http.Response response = await http.get(Uri.parse('$uri/posts'));
    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body);
      final List<Post> postList =
          jsonList.map((e) => Post.fromJson(e)).toList();
      return postList;
    } else {
      throw Exception('에러 확인');
    }
  }

  Future<List<Post>> getPosts({required int page, required int limit}) async {
    final http.Response response =
        await http.get(Uri.parse('$uri/posts?_page=$page&_limit=$limit'));
    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body);
      final List<Post> postList =
          jsonList.map((e) => Post.fromJson(e)).toList();
      return postList;
    } else {
      throw Exception(response.statusCode);
    }
  }

  Future<int> addPost(PostDto postDto) async {
    final http.Response response = await http.post(Uri.parse('$uri/posts'),
        body: jsonEncode(postDto.toJson()));
    // print(response.statusCode);
    // 현재 Dto에 id가 num으로 선언되어 있고, null 한 상태임으로
    // id가 null 이면 int 형으로 전환 하고 그 값이 null 이면 0으로 값 변환
    return PostDto.fromJson(jsonDecode(response.body)).id?.toInt() ?? 0;
  }

// Future<Post> updatePost 로 작업 진행 했는데, 반환하는 값이
// PostDto 임으로 맞춰서 변경
  Future<PostDto> updatePost(PostDto postDto) async {
    final post = '$uri/posts/${postDto.id}';
    // put 을 사용할때는 꼭 headers를 사용하세요.. 아니면
    // body에 ${postDto.id} 이 값만 들어옴
    final http.Response response = await http.put(Uri.parse(post),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(postDto.toJson()));
    // 값이 잘 들어왓는지 확인할때 모르겠으면 print 해볼것
    // print(response.body);
    // print(postDto.toJson());
    // print(post);
    return PostDto.fromJson(jsonDecode((response.body)));
  }
}
