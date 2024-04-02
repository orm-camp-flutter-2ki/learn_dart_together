import 'dart:io';

import 'package:learn_dart_together/240402/insert_book_view.dart';
import 'package:learn_dart_together/240402/repository/book_repository.dart';
import 'package:learn_dart_together/240402/repository/book_repository_impl.dart';
import 'package:learn_dart_together/240402/repository/user_repository.dart';
import 'package:learn_dart_together/240402/repository/user_repository_impl.dart';
import 'package:learn_dart_together/240402/user_run_app.dart';

import 'book_loan_ui.dart';

void main() async {
  UserRepository userRepository = UserRepositoryImpl();
  BookRepository bookRepository = BookRepositoryImpl();
  UserRunApp userRunApp = UserRunApp();

  BookLoanUi bookLoanUi = BookLoanUi();

  bool running = true;
  while (running) {
    printMainMenu1();

    String userInput = stdin.readLineSync()!.trim();

    switch (userInput) {
      case '1':
        InsertBookView().getView(bookRepository);
        break;
      case '2':
        await userRunApp.userRunApp(userRepository);
        break;
      case '3':
        await bookLoanUi.bookLoanui(userRepository, bookRepository);
        break;
      case 'exit':
        running = false;
        break;
      default:
        print('올바른 옵션을 선택하세요.');
        break;
    }
  }
}

void printMainMenu1() {
  print('======== 하려는 작업을 선택하세요 ========');
  print('1. 책 등록 검색 삭제 ');
  print('2. 회원 등록 삭제 검색 ');
  print('3. 책 대여');
  print('====================================');
  print('원하는 작업의 번호를 입력하세요.');
}
