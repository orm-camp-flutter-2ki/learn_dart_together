import '../../24_03_25/01_user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
}