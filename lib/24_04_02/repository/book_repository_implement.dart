import '../model/book.dart';
import 'book_repository.dart';

class BookRepositoryImplement implements BookRepository {
  final List<Book> _books = [];

  @override
  void addBook(Book book) {
    _books.add(book);
  }

  @override
  void deleteBook(String isbn) {
    _books.removeWhere((book) => book.isbn == isbn);
  }

  @override
  Book? findBookByIsbn(String isbn) {
    return _books.firstWhere((book) => book.isbn == isbn);
  }

  @override
  List<Book> getAllBooks() {
    return _books;
  }

  @override
  void updateBook(Book book) {
    var index = _books.indexWhere((b) => b.isbn == book.isbn);
    if (index != -1) {
      _books[index] = book;
    }
  }
}
