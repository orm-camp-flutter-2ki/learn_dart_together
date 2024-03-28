import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/user_repository.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;

  UserRepositoryImpl(this._api);
  
  @override
  Future<List<User>> getUsersList() async {
    final userDto = await _api.getUserDtoList();
    final userList = userDto.map((e) => e.transferDtoUser()).toList();

    return userList;
  }

  @override
  Future<List<User>> getUserTop10ByUserName() async {
    final userDto = await _api.getUserDtoList();
    final userList = userDto.map((e) => e.transferDtoUser()).toList();
    final filtered = userList.sorted((a, b) => a.name.compareTo(b.name)).sublist(0, 10);

    return filtered;
  }
}