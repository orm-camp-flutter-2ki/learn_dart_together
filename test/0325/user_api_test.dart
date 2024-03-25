import 'package:http/http.dart';
import 'package:learn_dart_together/0325/user_api.dart';
import 'package:learn_dart_together/0325/user_data_class.dart';
import 'package:test/scaffolding.dart';

Future<void> main() async {
  test('description', () async {
    try {
      final UserApi userApi = UserApi();
      final List<User> users = await userApi.getUsers();
    } catch (e) {
      print('[error]\n$e');
    }
  });
}
