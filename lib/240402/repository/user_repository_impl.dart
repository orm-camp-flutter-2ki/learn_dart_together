import 'package:learn_dart_together/240402/model/user.dart';
import 'package:learn_dart_together/240402/repository/user_repository.dart';

import '../api/csv_api.dart';

class UserRepositoryImpl implements UserRepository {
  final CsvApi _client;

  UserRepositoryImpl({CsvApi? client}) : _client = client ?? CsvApi();

  List<User> _userList = [];
  int _userId = 0;

  @override
  Future<void> saveUser() async {
    await _client.saveUser(_userList);
  }

  @override
  int getiIdInt() {
    _userId++;
    return _userId;
  }

  @override
  int createUser(User user) {
    _userList.add(user);
    return user.id;
  }

  @override
  void delUser(int val) {
    for (int i = 0; i < _userList.length; i++) {
      if (_userList[i].id == val) {
        User user = _userList[i].copyWith(isMember: false);
        _userList[i] = user;
      }
    }
  }

  @override
  void delcanUser(int val) {
    for (int i = 0; i < _userList.length; i++) {
      if (_userList[i].id == val) {
        User user = _userList[i].copyWith(isMember: true);
        _userList[i] = user;
      }
    }
  }

  @override
  List<User> getUsers() {
    return _userList;
  }

  @override
  User? getUser(int val) {
    User? user;
    for (int i = 0; i < _userList.length; i++) {
      if (_userList[i].id == val) {
        user = _userList[i];
      }
    }
    return user;
  }

  @override
  void changeUser(int val ,User user) {
    for (int i = 0; i < _userList.length; i++) {
      if (_userList[i].id == val) {
        _userList[i] = user;
      }
    }
  }
}
