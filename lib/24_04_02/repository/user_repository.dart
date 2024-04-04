import 'package:learn_dart_together/24_04_02/model/user.dart';
import 'package:learn_dart_together/24_04_02/repository/library_repository.dart';

abstract interface class UserRepository implements LibraryRepository{
  loanHistory(int userId);
  signUp(User user);
  signOut(int userId);
  getUsers();
}