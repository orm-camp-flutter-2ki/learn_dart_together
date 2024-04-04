import '../model/book.dart';
import '../model/user.dart';

abstract interface class LibraryRepository {

  Future<List<User>> searchUsers();
  Future<void> addUser(User user);
  Future<void> editUser(int id);
  Future<void> deleteUser(int id);
  Future<void> undo(int id);
  Future<void> back();

  Future<List<Book>> searchBooks();
}