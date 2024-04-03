import 'package:learn_dart_together/24_04_02/model/book.dart';
import 'package:learn_dart_together/24_04_02/model/book_history.dart';
import 'package:learn_dart_together/24_04_02/repository/library_repository.dart';
import 'package:learn_dart_together/24_04_02/repository/library_repository_impl.dart';
import 'package:learn_dart_together/24_04_02/service/book_service.dart';

import '../controller/main.dart';

class BookServiceImpl implements BookService {

  final LibraryRepository _libraryRepository = LibraryRepositoryImpl();

  @override
  void rentBook(int userId, int bookId) async {
    List<Book> searchBooks = await _libraryRepository.searchBooks();
    for (Book book in searchBooks) {
      if (book.id == bookId) {
        if (book.isAble == true) {
          BookHistory bookHistory = BookHistory(id: -1, bookId: bookId, userId: userId, rentDate: getDateTime(), isExtend: false);
          // addBookHistory(bookHistory);
          // book.isAble = false;  // Book 클래스의 isAble 필드가 final이라서 변경 불가(Model은 변경이 불가능한데 그럼 DTO를 사용해야 하나?)
        } else {
          print('대출할 수 없는 도서입니다.');
        }
      }
    }
  }

  @override
  Future<List<Book>> searchBooks() async {
    return await _libraryRepository.searchBooks();
  }
}