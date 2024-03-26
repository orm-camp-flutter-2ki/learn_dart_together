import 'package:learn_dart_together/0325/user.dart';

abstract interface class UserRepository {

  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}