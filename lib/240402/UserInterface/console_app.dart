import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/240402/data_source/book_data_source.dart';
import 'package:learn_dart_together/240402/model/book.dart';

import '../model/library.dart';
import '../model/user.dart';
import '../repository/library_repository_impl.dart';

enum Page {
  loginPage,
  userPage,
  myBooksPage,
  sortPage,
  checkOutPage,
  extendPage,
  returnPage
}

final List<Page> pageStack = [Page.loginPage];
final librarySystem =
    LibrarySystem(LibraryRepositoryImpl(bookDataSource: BookDataSourceImpl()));

void main() {
  while (true) {
    try {
      switch (pageStack.last) {
        case Page.loginPage:
          loginPage();
          break;
        case Page.userPage:
          userPage();
          break;
        case Page.myBooksPage:
          myBooksPage();
          break;
        case Page.sortPage:
          sortPage();
          break;
        case Page.checkOutPage:
          checkOutPage();
          break;
        case Page.extendPage:
          extendPage();
          break;
        case Page.returnPage:
          returnPage();
          break;
      }
    } catch (e) {
      print('에러가 발생하였습니다.\n프로그램을 재시작합니다.');
      pageStack.clear();
      pageStack.add(Page.loginPage);
    }
  }
}

enum SearchType {
  total,
  available,
  my;
}

void returnPage() {
  print('\n반납할 책의 id를 입력해주세요.');
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  if (int.tryParse(input) == null ||
      !librarySystem.isReturnable(int.parse(input))) {
    print('올바른 id를 입력해주세요.');
    return;
  }
  int id = int.parse(input);
  librarySystem.returnBook(id);
  print('반납이 완료되었습니다.');
  pageStack.removeLast();
}

void userPage() {
  if (librarySystem.bookList.isEmpty) {
    print('\n원하시는 메뉴의 번호를 입력해주세요.\n0. 전체 책 조회\n1. 대출 가능 책 조회\n2. 대출 목록 조회');
  } else {
    print(
        '\n원하시는 메뉴의 번호를 입력해주세요.\n0. 전체 책 조회\n1. 대출 가능 책 조회\n2. 대출 목록 조회\n3. 재정렬\n4. 책 대출하기');
  }
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  switch (input) {
    case '0':
      List<Book> books = librarySystem.getBookList();
      books.forEach((print));
      return;
    case '1':
      List<Book> books = librarySystem.getBookList(isAvailable: true);
      books.forEach((print));
      return;
    case '2':
      List<Book> books = librarySystem.getMyBookList();
      books.forEach((print));
      pageStack.add(Page.myBooksPage);
      return;
    case '3':
      if (librarySystem.bookList.isEmpty) {
        print('정렬할 책이 없습니다.\n조회를 먼저 해주세요.');
        return;
      }
      pageStack.add(Page.sortPage);
      return;
    case '4':
      if (librarySystem.bookList.isEmpty) {
        print('대출할 책이 없습니다.\n조회를 먼저 해주세요.');
        return;
      }
      pageStack.add(Page.checkOutPage);
      return;
    default:
      print('잘못된 입력입니다.');
  }
}

void myBooksPage() {
  print('\n원하시는 메뉴의 번호를 입력해주세요.\n0. 대출 연장\n1. 책 반납\n2. 뒤로가기');
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  switch (input) {
    case '0':
      pageStack.add(Page.extendPage);
      break;
    case '1':
      pageStack.add(Page.returnPage);
      break;
    case '2':
      pageStack.removeLast();
      break;
    default:
      print('잘못된 입력입니다.');
      break;
  }
}

void extendPage() {
  print('\n연장할 책의 id를 입력해주세요.');
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  if (int.tryParse(input) == null ||
      !librarySystem.isExtendable(int.parse(input))) {
    print('올바른 id를 입력해주세요.');
    return;
  }
  int id = int.parse(input);
  if (librarySystem.extendedBook(id)) {
    print('연장이 완료되었습니다.');
    pageStack.removeLast();
  }
}

void sortPage() {
  print('\n원하시는 정렬 조건의 번호를 입력해주세요.\n0. 반납 기간\n1. 출간 날짜\n2. 이름');
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  switch (input) {
    case '0':
      List<Book> books = librarySystem.getSortBookList(BookSortBy.endDate);
      books.forEach((print));
      pageStack.removeLast();
      break;
    case '1':
      List<Book> books =
          librarySystem.getSortBookList(BookSortBy.publishedDate);
      books.forEach((print));
      pageStack.removeLast();
      break;
    case '2':
      List<Book> books = librarySystem.getSortBookList(BookSortBy.name);
      books.forEach((print));
      pageStack.removeLast();
      break;
    default:
      print('잘못된 입력입니다.');
      break;
  }
}

void checkOutPage() {
  print('\n대출할 책의 id를 입력해주세요.');
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  if (int.tryParse(input) == null ||
      !librarySystem.isCheckOutable(int.parse(input))) {
    print('올바른 id를 입력해주세요.');
    return;
  }
  int id = int.parse(input);
  if (librarySystem.checkOutBook(id)) {
    print('대출이 완료되었습니다.');
    pageStack.removeLast();
  }
}

void loginPage() {
  print('\n원하시는 메뉴의 번호를 입력해주세요.\n0. 회원 등록\n1. 로그인');
  String input = stdin.readLineSync(encoding: utf8) ?? '';
  switch (input) {
    case '0':
      print('이름을 입력해 주세요.');
      String name = stdin.readLineSync(encoding: utf8) ?? '';
      print('연락처를 입력해 주세요.');
      String phoneNum = stdin.readLineSync(encoding: utf8) ?? '';
      print('주소를 입력해 주세요.');
      String address = stdin.readLineSync(encoding: utf8) ?? '';
      print('생년월일을 입력해 주세요 0000-00-00.');
      DateTime? birthDay =
          DateTime.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
      if (birthDay == null) {
        print('올바른 형식을 입력해 주세요.');
        return;
      }
      User signUpData = User(
          name: name,
          phoneNum: phoneNum,
          signUpDate: DateTime.now(),
          address: address,
          birthDay: birthDay,
          history: {});
      bool isSuccess = librarySystem.signUpUser(signUpData);
      if (isSuccess) {
        print('회원 가입 성공!');
        return;
      } else {
        print('이미 존재하는 회원입니다.');
        return;
      }
    case '1':
      print('이름을 입력해 주세요.');
      String name = stdin.readLineSync(encoding: utf8) ?? '';
      print('연락처를 입력해 주세요.');
      String phoneNum = stdin.readLineSync(encoding: utf8) ?? '';
      bool isSuccess = librarySystem.signIn(name, phoneNum);
      if (isSuccess) {
        print('로그인 성공!\n사용자 메뉴로 이동합니다.');
        pageStack.add(Page.userPage);
        return;
      } else {
        print('회원 정보가 일치하지 않습니다.');
        return;
      }
    default:
      print('잘못된 입력입니다.');
      return;
  }
}
