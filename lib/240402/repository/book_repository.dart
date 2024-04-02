import 'package:dart_cli_practice/240402/model/book.dart';

abstract interface class BookRepository {
  Future<void> save(Book book);

  Future<Book> findOneById(String id);

  Future<List<Book>> findAll();

  Future<List<Book>> findAllSortByType(int sortType);
}
