import '../model/book.dart';

//이용자 입장에서
abstract class BookRepository {
  void addBook(Book book); // 구현 1. BOOK // 책 구매++;

  void deleteBook(String isbn); // 책 제거

  // Book? findBookByIsbn(String isbn); //RENT로 이동

  List<Book> getAllBooks(); // 2) 책 리스트 [{code: , title: , releaseDate: }]

  void updateBook(Book book); // 책 정보 업데이트
}
