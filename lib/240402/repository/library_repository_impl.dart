import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/library.dart';
import 'package:learn_dart_together/240402/model/user.dart';

import '../data_source/book_data_source.dart';

class LibraryRepositoryImpl implements Repository {
  final BookDataSource _bookDataSource;

  @override
  List<Book> getBookList(
      {bool? isAvailable, BookSortBy? sortBy, String? name}) {
    List<Book> books = _bookDataSource
        .readBook()
        .where((e) =>
            (isAvailable == null || e.startDate == Book.defaultDate) &&
            (name == null || e.name == name))
        .toList();
    if (sortBy != null) {
      switch (sortBy) {
        case BookSortBy.name:
          books.sort((a, b) => a.name.compareTo(b.name));
          break;
        case BookSortBy.publishedDate:
          books.sort((a, b) => a.publishedDate.compareTo(b.publishedDate));
          break;
        case BookSortBy.author:
          books.sort((a, b) => a.author.compareTo(b.author));
          break;
        case BookSortBy.endDate:
          books.sort((a, b) => a.endDate.compareTo(b.endDate));
          break;
        case BookSortBy.publishedDate:
          books.sort((a, b) => a.publishedDate.compareTo(b.publishedDate));
          break;
      }
    }
    return books;
  }

  @override
  User getUser(User user) {
    return _bookDataSource.readUser(user);
  }

  @override
  User getUserByNameAndPhoneNum(String name, String phoneNum) {
    return _bookDataSource.readUserByNameAndPhoneNum(name, phoneNum);
  }

  @override
  bool saveUser(User user) {
    return _bookDataSource.createUser(user);
  }

  @override
  bool updateBook(Book book) {
    return _bookDataSource.updateBook(book);
  }

  @override
  bool updateUser(User user) {
    return _bookDataSource.updateUser(user);
  }

  const LibraryRepositoryImpl({
    required BookDataSource bookDataSource,
  }) : _bookDataSource = bookDataSource;
}
