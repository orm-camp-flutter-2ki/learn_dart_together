import 'package:learn_dart_together/24_03_28/model/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
}