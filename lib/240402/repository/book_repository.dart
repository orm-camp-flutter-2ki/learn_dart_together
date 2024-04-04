import 'package:learn_dart_together/240402/model/book.dart';

abstract interface class BookRepository {
  bool createBook(Book book);

  List<Book> readBooks();

  Book? readBook(int val);

  int getIdInt();

  void changeBook(int val, Book book);
}
