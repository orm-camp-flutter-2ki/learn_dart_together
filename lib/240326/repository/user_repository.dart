// import '../../240325/model/user.dart';
import 'package:learn_dart_together/240328/model/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}