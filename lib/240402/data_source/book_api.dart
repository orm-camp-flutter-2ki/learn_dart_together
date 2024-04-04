import 'package:dart_cli_practice/240402/model/book.dart';

abstract interface class BookApi {
  Future<void> postBook(Book book);

  Future<List<Book>> getBooks();
}
