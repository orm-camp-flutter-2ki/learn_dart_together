import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/loanRecord.dart';

import '../model/book.dart';
import '../model/user.dart';

abstract interface class RentRepository {
  Book addRentRecord(Book book, User user, DateTime day);

  void searchRentRecord();

  void extendReturnDate();

  void returnBook(Book book, User user, DateTime day);
}

class RentRepositoryImpl implements RentRepository {
  @override
  void returnBook(Book book, User user, DateTime day) {}

  @override
  Book addRentRecord(Book book, User user, DateTime day) {
    // TODO: implement addRentRecord
    final Book updatedBook = book.copyWith(isRented: true);

    // 필요하다면 updatedUser를 사용하거나 저장하는 로직 추가
    return updatedBook;
  }

  @override
  void extendReturnDate() {
    // TODO: implement extendReturnDate
  }

  @override
  void searchRentRecord() {
    // TODO: implement searchRentRecord
  }
}
