import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_31/model/post_model.dart';

abstract interface class Http {
  Future<http.Response> get(Uri url);

  Future<http.Response> add(Uri url, PostModel postModel);

  Future<http.Response> delete(Uri url, int postId);

  Future<http.Response> update(Uri url, PostModel postModel);
}

class HttpImpl implements Http {
  @override
  Future<http.Response> get(Uri uri) async {
    return http.get(uri);
  }

  @override
  Future<http.Response> add(Uri url, PostModel postModel) async {
    final response = await http.post(
      Uri.parse('$url'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(postModel.toJson()),
    );
    return response;
  }

  @override
  Future<http.Response> delete(Uri url, int postId) async {
    final response = await http.delete(
      Uri.parse('$url/$postId'),
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }

  @override
  Future<http.Response> update(Uri url, PostModel postModel) async {
    // url맞고 id도 맞게 준거같은데 대체 왜 데이터가 null이 뜨는지 원인을 도저히 찾지 못하였음. update는 구현 실패..
    final response = await http.put(
      Uri.parse('$url/${postModel.id}'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(postModel.toJson()),
    );
    return response;
  }
}
