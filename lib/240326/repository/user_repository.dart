import 'package:learn_dart_together/240326/model/user/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}