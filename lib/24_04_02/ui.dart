import 'dart:io';

import 'package:learn_dart_together/24_04_02/library_service.dart';
import 'package:learn_dart_together/24_04_02/repository/book_repository_impl.dart';
import 'package:learn_dart_together/24_04_02/repository/user_repository_impl.dart';

import 'facade/library_system_facade.dart';

void main() async {
  final bookRepository = BookRepositoryImpl();
  final userRepository = UserRepositoryImpl();
  final facade = LibrarySystemFacade(bookRepository, userRepository);

  final LibrarySystem system = LibrarySystem(facade);

// 대출할 도서와 사용자 정보를 입력받음
  stdout.write('회원 ID를 입력하세요: ');
  int userId = int.parse(stdin.readLineSync()!);


  stdout.write('도서 ID를 입력하세요: ');
  int bookId = int.parse(stdin.readLineSync()!);

  // 대출 처리
  try {
   String msg = await system.loanBook(userId, bookId);
    print(msg);
    print('도서 대출이 완료되었습니다.');
  } catch (e) {
    print('도서 대출에 실패했습니다: $e');
  }
}
