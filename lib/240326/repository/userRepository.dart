import '../../240325/todo.dart';
import '../../240325/user.dart';
import '../datamodel/photo.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}
