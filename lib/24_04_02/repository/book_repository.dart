import 'package:learn_dart_together/24_04_02/repository/library_repository.dart';

import '../model/book.dart';

abstract interface class BookRepository implements LibraryRepository {
  loanableBooks();

  getBooksByOrder({required bool isAscending, required BookOrder order});

}
