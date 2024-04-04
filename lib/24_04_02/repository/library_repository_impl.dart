import 'package:learn_dart_together/24_04_02/data_source/library_data_source.dart';
import 'package:learn_dart_together/24_04_02/model/book.dart';
import 'package:learn_dart_together/24_04_02/model/user.dart';
import 'package:learn_dart_together/24_04_02/repository/library_repository.dart';

class LibraryRepositoryImpl implements LibraryRepository {
  final LibraryDataSource _libraryDataSource = LibraryDataSource();

  @override
  Future<void> addUser(User user) async {
    _libraryDataSource.addUser(user);
  }

  @override
  Future<void> back() {
    // TODO: implement back
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(int id) async {
    _libraryDataSource.deleteUser(id);
  }

  @override
  Future<void> editUser(int id) async {
    await _libraryDataSource.editUser(id);
  }

  @override
  Future<List<User>> searchUsers() {
    return _libraryDataSource.searchUsers();
  }

  @override
  Future<void> undo(int id) {
    // TODO: implement undo
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> searchBooks() async {
    return await _libraryDataSource.searchBooks();
  }
}
