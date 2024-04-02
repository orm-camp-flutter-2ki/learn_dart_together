import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_04_02/model/book.dart';

abstract interface class BookRepository {
  void addBookInfo(Book book);

  void searchBookInfo(Book book);

  void makeExtendReturnDate(int day);
}

class BookRepositoryImpl implements BookRepository {
  final List<Book> books = [];

  @override
  void addBookInfo(Book book) {
    books.add(book);
  }

  @override
  void searchBookInfo(Book book) {
    // TODO: implement searchBookInfo
    final searchedBook = books.where((element) => element.name == book.name);
    print('당신이 찾던 책 : $searchedBook');
  }
}

void makeExtendReturnDate(int day) {
  final rentBackDate = rentBackDate.add(Duration(days: day));
  print("반납일자가 $rentBackDate 까지 연장 되었습니다.");
}

void checkRentBackDate() {
  print("반납일자는 $rentBackDate 까지 입니다.");
}
