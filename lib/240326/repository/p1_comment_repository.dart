import '../data_source/p1_api.dart';
import '../model_class/p1_model_class.dart';

class P1Repository {
  final P1Api _api = P1Api();

  Future<List<Comment>> getComments(int postId) {
    return _api.getCommentsBy(postId);
  }
}
