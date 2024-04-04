import 'package:dart_cli_practice/240402/model/book.dart';

abstract interface class BookService {
  Future<void> register(Book book);

  Future<Book> getBook(String id);

  Future<List<Book>> getBooks({int? sortType});
}
