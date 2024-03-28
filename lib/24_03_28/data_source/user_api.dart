import 'package:learn_dart_together/24_03_28/model/user.dart';

abstract interface class UserApi {
  Future<List<User>> getUsers();
}
