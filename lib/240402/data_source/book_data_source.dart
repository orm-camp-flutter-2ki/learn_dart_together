import 'package:learn_dart_together/240402/model/book.dart';

import '../model/user.dart';

abstract interface class BookDataSource {
  bool createUser(User user);

  bool updateUser(User user);

  User readUser(User user);

  User readUserByNameAndPhoneNum(String name, String phoneNum);

  bool createBook(Book book);

  bool updateBook(Book book);

  List<Book> readBook();
}
