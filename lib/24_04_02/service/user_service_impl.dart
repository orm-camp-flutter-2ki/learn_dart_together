import 'package:learn_dart_together/24_04_02/dto/mapper/book_mapper.dart';
import 'package:learn_dart_together/24_04_02/model/user.dart';
import 'package:learn_dart_together/24_04_02/repository/library_repository.dart';
import 'package:learn_dart_together/24_04_02/repository/library_repository_impl.dart';
import 'package:learn_dart_together/24_04_02/service/user_service.dart';

import '../dto/user_dto.dart';

class UserServiceImpl implements UserService {

  final LibraryRepository _libraryRepository = LibraryRepositoryImpl();

  @override
  void addUser(UserDto user) {
    _libraryRepository.addUser(user.toUser());
  }

  @override
  void back() {
    // TODO: implement back
  }

  @override
  void deleteUser(int id) {
    _libraryRepository.deleteUser(id);
  }

  @override
  Future<void> editUser(int id) async {
    await _libraryRepository.editUser(id);
  }

  @override
  Future<List<User>> searchUsers() async {
    return await _libraryRepository.searchUsers();
  }

  @override
  void undo(int id) {
    // TODO: implement undo
  }
}