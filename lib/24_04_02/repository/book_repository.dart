import '../model/book.dart';

abstract class BookRepository {
  void addBook(Book book);
  void deleteBook(String isbn);
  Book? findBookByIsbn(String isbn);
  List<Book> getAllBooks();
  void updateBook(Book book);
}
