import 'package:dart_cli_practice/240402/model/book.dart';
import 'package:dart_cli_practice/240402/repository/book_repository.dart';
import 'package:dart_cli_practice/240402/service/book_service.dart';

class BookServiceImpl implements BookService {
  final BookRepository _bookRepository;

  BookServiceImpl(this._bookRepository);

  @override
  Future<Book> getBook(String id) async {
    return await _bookRepository.findOneById(id);
  }

  @override
  Future<List<Book>> getBooks({int? sortType}) async {
    return switch (sortType) {
      null => await _bookRepository.findAll(),
      _ => await _bookRepository.findAllSortByType(sortType)
    };
  }

  @override
  Future<void> register(Book book) async {
    await _bookRepository.save(book);
  }
}
