import '../http/http_core.dart';

class CommentApi {
  Future<String> getComments(int postId) async {
    return await HttpService().get('$commentsUrl?postId=$postId');
  }
}
