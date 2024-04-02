import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  List<Book> bookList = [];
  int _bookId = 0;

  @override
  bool createBook(Book book) {
    try {
      bookList.add(book);
    } catch (e) {
      return false;
    }
    return true;
  }

  @override
  int getIdInt() {
    _bookId++;
    return _bookId;
  }

  List<Book> readBooks() {
    return bookList;
  }

  Book? readBook(int val) {
    Book? book;
    for (int i = 0; i < bookList.length; i++) {
      if (bookList[i].id == val) {
        book = bookList[i];
      }
    }
    return book;
  }

  @override
  void changeBook(int val, Book book) {
    for (int i = 0; i < bookList.length; i++) {
      if (bookList[i].id == val) {
        bookList[i] = book;
      }
    }
  }
}
