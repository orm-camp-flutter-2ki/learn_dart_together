import 'package:learn_dart_together/24_03_25/01_user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_26/repository/05_user_repository.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';

class UserRepositoryImpl2 implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<Geo>> getUsers() async {
    final userList = await _api.getUsers();
    return userList
        .where((e) => e.latitude == null)
        .map((e) => e.toGeo())
        .toList();
  }

  @override
  Future<List<Geo>> getUsersTop10ByUserName() {
    // TODO: implement getUsersTop10ByUserName
    throw UnimplementedError();
  }
}
