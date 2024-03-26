import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/user_repository.dart';
import 'package:collection/collection.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    final list = await _api.getUsers();
    return list;
  }

  @override
  Future<List<User>> getUserTop10ByUserName() async {
    final list = await _api.getUsers();
    final filtered = list.sorted((a, b) => a.name.compareTo(b.name)).sublist(0, 10);

    return filtered;
  }

}