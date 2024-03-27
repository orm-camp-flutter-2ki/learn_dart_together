import 'package:collection/collection.dart';

import '../data_source/json_place_holder_api.dart';
import '../model/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();

  Future<List<User>> getUsersTop10ByUserName();
}

class UserRepositoryImpl implements UserRepository {
  final _api = JsonPlaceHolderApi();

  @override
  Future<List<User>> getUsers() => _api.getUsers();

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final results = await _api.getUsers();

    return results
        .sorted((a, b) => a.userName.compareTo(b.userName))
        .take(10)
        .toList();
  }
}
