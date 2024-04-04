import '../model/book.dart';

abstract interface class BookRepository {
  void addBookInfo(Book book); //책을 구매함 *책 한권 +

  void searchBookInfo(Book book); //전체 책에 대한 정보 조회

  void makeExtendReturnDate(int day); //반납일 연장(최대 1회, 7일)
}
