import '../model/book.dart';

abstract interface class BookService {

  void rentBook(int userId, int bookId);
  Future<List<Book>> searchBooks();

}