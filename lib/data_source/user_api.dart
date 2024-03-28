import '../http/http_core.dart';

class UserApi {
  Future<String> getUsers() async {
    return await HttpService().get((usersUrl));
  }
}
