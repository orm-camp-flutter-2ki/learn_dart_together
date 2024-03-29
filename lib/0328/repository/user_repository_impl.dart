import 'package:learn_dart_together/0328/model/user.dart';
import 'package:learn_dart_together/0328/repository/user_repository.dart';
import '../data_source/user_api.dart';

class UserRepositoryImpl implements UserRepository{

  final UserApi _userApi;

  UserRepositoryImpl({UserApi? userApi}) : _userApi = userApi ?? UserApi();

  @override
  Future<List<User>> getUsers() async{
    try {
      return await _userApi.getUsers();
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}