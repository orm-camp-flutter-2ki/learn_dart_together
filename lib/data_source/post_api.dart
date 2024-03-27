import '../http/http_core.dart';

class PostApi {

  Future<String> getPost(int id) async {
    return await HttpService().get('$postsUrl?id=$id');
  }

  Future<String> getPosts() async {
    return await HttpService().get(postsUrl);
  }
}
