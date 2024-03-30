import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/Dto/post_dto.dart';

class PostApi {
  final http.Client _client;
  final String baseUrl;
  PostApi({http.Client? client, String? baseUrl})
      : _client = client ?? http.Client(),
        baseUrl = baseUrl ?? 'https://jsonplaceholder.typicode.com/posts';

  Future<List<PostDto>> getPosts() async {
    final response = await _client.get(Uri.parse(baseUrl)).onError((error, stackTrace) => throw Exception('Error:$error'));
    final List jsonList = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    final posts = jsonList.map((e) => PostDto.fromJson(e)).toList();
    return posts;
  }
}
