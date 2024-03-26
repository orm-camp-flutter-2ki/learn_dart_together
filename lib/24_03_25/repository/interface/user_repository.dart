import 'package:learn_dart_together/24_03_25/model/user/user_model.dart';

abstract interface class UserRepository {
  Future<List<UserModel>> getUsers();
  Future<List<UserModel>> getUsersTop10ByUserName();
}