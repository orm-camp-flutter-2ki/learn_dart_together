import 'package:learn_dart_together/24_03_25/DTO/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUserTop10ByUserName();
}