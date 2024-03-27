import 'package:http/http.dart' as http;
import 'package:learn_dart_together/http/http_service.dart';

class CommentApi {
  Future<String> getComments(int postId) async {
    return await HttpService().get('https://jsonplaceholder.typicode.com/comments?postId=$postId');
  }
}
