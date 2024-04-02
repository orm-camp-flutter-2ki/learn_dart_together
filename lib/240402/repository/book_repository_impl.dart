import 'package:collection/collection.dart';
import 'package:dart_cli_practice/240402/data_source/book_api.dart';
import 'package:dart_cli_practice/240402/model/book.dart';
import 'package:dart_cli_practice/240402/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookApi _bookApi;

  BookRepositoryImpl(this._bookApi);

  @override
  Future<List<Book>> findAll() async {
    return await _bookApi.getBooks();
  }

  // 이름순, isbn 순, 발행일 순
  @override
  Future<List<Book>> findAllSortByType(int sortType) async {
    final bookList = await _bookApi.getBooks();

    return bookList.sorted((a, b) => compare(a, b, sortType));
  }

  @override
  Future<Book> findOneById(String id) async {
    final bookList = await _bookApi.getBooks();

    return bookList.where((e) => e.id == id).first;
  }

  @override
  Future<void> save(Book book) async {
    await _bookApi.postBook(book);
  }

  int compare(Book prevBook, Book nextBook, int sortType) {
    return switch (sortType) {
      // 이름순
      1 => prevBook.name.compareTo(nextBook.name),
      // isbn 순
      2 => prevBook.isbn.compareTo(nextBook.isbn),
      // 최근 발행일 순
      3 => nextBook.publicationDate.compareTo(prevBook.publicationDate),
      // id 순
      _ => nextBook.id.compareTo(prevBook.id)
    };
  }
}
