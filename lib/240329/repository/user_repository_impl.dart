import 'package:collection/collection.dart';
import 'package:learn_dart_together/240329/data_source/user_data_source.dart';
import 'package:learn_dart_together/240329/dto/user_dto.dart';
import 'package:learn_dart_together/240329/mapper/user_mapper.dart';
import 'package:learn_dart_together/240329/model/user.dart';
import 'package:learn_dart_together/240329/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource);

  @override
  Future<User> getUser(int id) {
    // TODO: implement getUser To: 동혁
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers() async {
    final List<UserDto> userDtoList = await _dataSource.getUsers();
    return userDtoList
        .map((e) => e.toUser())
        .sorted((a, b) => a.name.compareTo(b.name))
        .toList();
  }
}
