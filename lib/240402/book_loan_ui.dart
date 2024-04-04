import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240402/repository/book_repository.dart';
import 'package:learn_dart_together/240402/repository/user_repository.dart';

import 'model/book.dart';
import 'model/user.dart';

class BookLoanUi {
  Future<void> bookLoanui(
      UserRepository userRepository, BookRepository bookRepository) async {
    bool running = true;

    while (running) {
      printMainMenu2();

      String userInput = stdin.readLineSync()!.trim();

      switch (userInput) {
        case '1':
          print('회원 명단');
          getUsers(userRepository);
          running = false;
          break;
        case '2':
          print('책명단');
          getBook(bookRepository);
          running = false;
          break;
        case '3':
          print('책 대여');
          loanBook(userRepository, bookRepository);
          await userRepository.saveUser();
          running = false;
          break;
        case 'exit':
          running = false;
          break;
        default:
          print('올바른 옵션을 선택하세요.');
          break;
      }
    }

    print('프로그램을 종료합니다.');
  }

  void printMainMenu2() {
    print('======== 회원 관리 프로그램 ========');
    print('1. 회원 명단');
    print('2. 책 명단');
    print('3. 책 대여');
    print('====================================');
    print('원하는 작업의 번호를 입력하세요.');
  }

  void getBook(BookRepository bookRepository) {
    List<Book> bookList = bookRepository.readBooks();
    bookList
        .where((element) => element.isAbleLoan == true)
        .sorted((a, b) => b.publishDate.compareTo(a.publishDate))
        .forEach((element) => print(element));
  }

  void getUsers(UserRepository userRepository) {
    List userList = userRepository.getUsers();
    userList.forEach((element) => print(element));
  }

  void loanBook(UserRepository userRepository, BookRepository bookRepository) {
    print('1. 빌리는 회원 Id 선택하세요');
    String userInput = stdin.readLineSync()!.trim();
    User user = userRepository.getUser(int.parse(userInput))!;

    // user.loanBooks.add();
    print('1. 책을 선택하세요');
    String bookInput = stdin.readLineSync()!.trim();
    print(bookInput);
    Book book = bookRepository.readBook(int.parse(bookInput))!;

    List<Book> loanBookList = [];
    for (int i = 0; i < user.loanBooks.length; i++) {
      loanBookList[i] = user.loanBooks[i];
    }

    Book book2 = book.copyWith(
        isAbleLoan: false,
        loanDate: DateTime.now(),
        returnDate: DateTime.now().add(Duration(days: 14)));

    loanBookList.add(book2);

    User user2 = user.copyWith(loanBooks: loanBookList);

    userRepository.changeUser(user.id, user2);
    bookRepository.changeBook(book.id, book2);
  }
}
