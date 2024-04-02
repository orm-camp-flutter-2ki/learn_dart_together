import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/user.dart';

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

  bool saveUser(User user) {
    final getUser = repository.getUser(user);

    if (getUser.userCompareForSignUp(user)) {
      return repository.saveUser(user);
    } else {
      return false;
    }
  }

  bool signIn(String name, String phoneNum) {
    final signIn = repository.getUserByNameAndPhoneNum(name, phoneNum);

    if (signIn.name == name && signIn.phoneNum == phoneNum) {
      user = signIn;
      return true;
    }
    return false;
  }

  List<Book> getBookList(bool isAvailable) {
    bookList = repository.getBookList(isAvailable: isAvailable);
    return bookList;
  }

  List<Book> sortBookList(BookSortBy sortedBy) {
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
    book.copyWith(startDate: day, endDate: day.add(defaultPeriod));
    // 대출 한 정보 업데이트
    repository.updateBook(book);
    repository.updateUser(user);
    return true;
  }

  List<Book> getMyBookList(Object sortedBy) {
    return bookList.where((e) => user.history.contains(e.id)).toList();
  }

  bool extension(int id) {
    Book book = bookList.where((e) => e.id == id).first;

    if (!book.isExtended) {
      book.copyWith(
          endDate: book.endDate.add(extensionPeriod), isExtended: true);
      repository.updateBook(book);
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

abstract interface class Repository {
  bool saveUser(User user);

  User getUser(User user);

  User getUserByNameAndPhoneNum(String name, String phoneNum);

  List<Book> getBookList({bool isAvailable, BookSortBy sortBy, String name});

  bool updateBook(Book book);

  bool updateUser(User user);
}

enum BookSortBy {
  name,
  publishedDate,
  author,
  endDate;
}
