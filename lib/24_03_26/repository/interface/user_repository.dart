import 'package:learn_dart_together/24_03_25/DTO/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUserList();
  Future<List<User>> getUserTop10ByUserName();
}