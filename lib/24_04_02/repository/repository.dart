import 'package:learn_dart_together/24_04_02/model/library.dart';

import '../model/book.dart';
import '../model/user.dart';

abstract interface class Repository {
  bool saveUser(User user);

  List<User> getUser(User user);

  List<User> getUserByNameAndPhoneNum(String name, String phoneNum);

  List<Book> getBookList({bool isAvailable, BookSortBy sortBy, String name});

  bool updateBook(Book book);

  bool updateUser(User user);
}