import 'package:learn_dart_together/240402/model/book.dart';

import '../model/user.dart';

abstract interface class BookDataSource {
  bool createUser(User user);

  bool updateUser(User user);

  List<User> readUser(User user);

  List<User> readUserByNameAndPhoneNum(String name, String phoneNum);

  bool createBook(Book book);

  bool updateBook(Book book);

  List<Book> readBook();
}

class BookDataSourceImpl implements BookDataSource {
  BookDataSourceImpl() {
    initBookList();
  }

  List<Book> bookList = [];
  List<User> userList = [];

  void initBookList() {
    bookList.add(Book(
        id: 100,
        name: '전종현의 과거',
        author: '전종현',
        publishedDate: DateTime(2003 - 04 - 25),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 101,
        name: '전종현의 현재',
        author: '전종현',
        publishedDate: DateTime(2013 - 10 - 08),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 102,
        name: '전종현의 미래',
        author: '전종현',
        publishedDate: DateTime(2023 - 09 - 21),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 103,
        name: '신승찬의 과거',
        author: '신승찬',
        publishedDate: DateTime(2008 - 01 - 21),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 104,
        name: '신승찬의 현재',
        author: '신승찬',
        publishedDate: DateTime(2010 - 09 - 17),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 105,
        name: '신승찬의 미래',
        author: '신승찬',
        publishedDate: DateTime(2024 - 04 - 01),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 106,
        name: '변희선의 과거',
        author: '변희선',
        publishedDate: DateTime(2002 - 03 - 03),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 107,
        name: '변희선의 현재',
        author: '변희선',
        publishedDate: DateTime(2017 - 12 - 01),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    bookList.add(Book(
        id: 108,
        name: '변희선의 미래',
        author: '변희선',
        publishedDate: DateTime(2019 - 07 - 28),
        isExtended: false,
        startDate: Book.defaultDate,
        endDate: Book.defaultDate));
    userList.add(User(
        name: '변희선',
        phoneNum: '9090',
        signUpDate: DateTime(1999 - 09 - 09),
        address: '광주',
        birthDay: DateTime(1999 - 09 - 09),
        history: {}));
  }

  @override
  bool createBook(Book book) {
    bookList.add(book);
    return true;
  }

  @override
  bool createUser(User user) {
    userList.add(user);
    return true;
  }

  @override
  List<Book> readBook() {
    return bookList;
  }

  @override
  List<User> readUser(User user) {
    return userList
        .where((e) => e.name == user.name && e.phoneNum == user.phoneNum)
        .toList();
  }

  @override
  List<User> readUserByNameAndPhoneNum(String name, String phoneNum) {
    return userList
        .where((e) => e.name == name && e.phoneNum == phoneNum)
        .toList();
  }

  @override
  bool updateBook(Book book) {
    // bookList를 index로 for문 사용해서 순회
    for (int i = 0; i < bookList.length; i++) {
      if (bookList[i].id == book.id) {
        bookList[i] = book;
        return true;
      }
    }
    return false;
    // book.id == bookList.id 값이 일치하는 book의 index값 찾기
    // bookList.removeAt(index)
    // bookList.insert(index),book
  }

  @override
  bool updateUser(User user) {
    for (int i = 0; i < userList.length; i++) {
      if (user.name == userList[i].name &&
          user.phoneNum == userList[i].phoneNum) {
        userList[i] = user;
        return true;
      }
    }
    return false;
  }
}
