import '../http/http_service.dart';

class PostApi {
  final baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<String> getPost(int id) async {
    return await HttpService().get('$baseUrl?id=$id');
  }

  Future<String> getPosts() async {
    return await HttpService().get(baseUrl);
  }
}
