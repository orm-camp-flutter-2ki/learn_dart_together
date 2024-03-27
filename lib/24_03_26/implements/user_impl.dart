import '../../24_03_25/data_source/user_api.dart';
import '../../24_03_25/user.dart';
import '../repository/04_user.dart';

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
    return list.sorted((a, b) => a.name.compareTo(b.name)).sublist(0, 10);