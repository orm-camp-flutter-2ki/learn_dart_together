import 'package:learn_dart_together/24_03_26/model_class/task5_user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}
