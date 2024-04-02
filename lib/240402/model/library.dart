import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/user.dart';

import '../repository/repositoyr.dart';

// 비지니스 로직
class LibrarySystem {
  final Repository repository;

  LibrarySystem(this.repository);

  List<Book> bookList = [];
  late User user;
  final day = DateTime.now();

  // startDate 기간(기본제공값)
  Duration defaultPeriod = Duration(days: 14);

  // 연장
  Duration extensionPeriod = Duration(days: 7);

  bool isCheckOutable(int id) => bookList
      .where((e) => e.id == id && e.startDate == Book.defaultDate)
      .isNotEmpty;

  bool isExtendable(int id) =>
      !bookList.where((e) => e.id == id).first.isExtended;

  bool isReturnable(int id) => bookList.any((e) => e.id == id);

  bool signUpUser(User user) {
    if (repository.getUserByNameAndPhoneNum(user.name, user.phoneNum).isEmpty) {
      return repository.saveUser(user);
    } else {
      return false;
    }
  }

  bool signIn(String name, String phoneNum) {
    final signIn = repository.getUserByNameAndPhoneNum(name, phoneNum);

    if (signIn.isEmpty) return false;
    if (signIn.first.name == name && signIn.first.phoneNum == phoneNum) {
      user = signIn.first;
      return true;
    }
    return false;
  }

  List<Book> getBookList({bool? isAvailable}) {
    if (isAvailable != null) {
      bookList = repository.getBookList(isAvailable: isAvailable);
    } else {
      bookList = repository.getBookList();
    }
    return bookList;
  }

  List<Book> getSortBookList(BookSortBy sortedBy) {
    switch (sortedBy) {
      case BookSortBy.name:
        bookList.sort((a, b) => a.name.compareTo(b.name));
        break;

      case BookSortBy.publishedDate:
        bookList.sort((a, b) => a.publishedDate.compareTo(b.publishedDate));
        break;
      case BookSortBy.author:
        bookList.sort((a, b) => a.author.compareTo(b.author));
        break;
      case BookSortBy.endDate:
        bookList.sort((a, b) => a.endDate.compareTo(b.endDate));
        break;
    }
    return bookList;
  }

  bool checkOutBook(int id) {
    Book book = bookList.where((e) => e.id == id).first;
    user.history.add(book.id);

    repository.updateBook(
        book.copyWith(startDate: day, endDate: day.add(defaultPeriod)));
    repository.updateUser(user);
    return true;
  }

  List<Book> getMyBookList() {
    return bookList.where((e) => user.history.contains(e.id)).toList();
  }

  bool extendedBook(int id) {
    Book book = bookList.where((e) => e.id == id).first;

    if (!book.isExtended) {
      repository.updateBook(book.copyWith(
          endDate: book.endDate.add(extensionPeriod), isExtended: true));
      repository.updateUser(user);
      return true;
    } else {
      return false;
    }
  }

  void returnBook(int id) {
    Book book = bookList.where((e) => e.id == id).first;
    user.history.remove(id);
    repository.updateUser(user);
    repository.updateBook(
        book.copyWith(startDate: Book.defaultDate, endDate: Book.defaultDate));
  }
}

enum BookSortBy {
  name,
  publishedDate,
  author,
  endDate;
}
