import '../http/http_service.dart';

class UserApi {
  final baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<String> getUsers() async {
    return await HttpService().get((baseUrl));
  }
}
