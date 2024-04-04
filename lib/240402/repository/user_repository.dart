
import 'package:learn_dart_together/240402/repository/library_repository.dart';

import '../model/user.dart';

abstract interface class UserRepository implements LibraryRepository{
  loanHistory(int userId);
  signUp(User user);
  signOut(int userId);
  getUsers();
}