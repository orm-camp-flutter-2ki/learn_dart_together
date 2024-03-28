import '../02_model/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUser();
}
