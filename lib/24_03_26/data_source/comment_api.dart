import 'dart:convert'; // Future 사용하려고

import 'package:http/http.dart' as http; // URL 처리에 사용하려고
import 'package:learn_dart_together/24_03_26/repository/comment_repository.dart';
import 'package:learn_dart_together/24_03_26/repository/comment_repository_implements.dart';

import '../model/comment.dart'; // Json Data

class CommentApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/comments';

  Future<List<Comment>> getComments(int postId) async {
    final Uri url = Uri.parse('$baseUrl?postId=$postId'); // URL에서 가져올 Data 특정하기

    try {
      final response = await http.get(url); // URL에서 데이터 가져오기

      // 정상작동(200) 이면
      if (response.statusCode == 200) {
        final List<dynamic> commentsJson =
            json.decode(response.body); // URL에서 가져온 문자열 Data
        return commentsJson
            .map((json) => Comment.fromJson(json))
            .toList(); // Data를 객체로 변경
      } else {
        throw Exception('실패!');
      }
    } catch (e) {
      throw Exception('실패!');
    }
  }
}

void main() async {
  CommentRepository commentRepository = CommentRepositoryImplements();
  final result = await commentRepository.getComments(1);
  print(result);
}
