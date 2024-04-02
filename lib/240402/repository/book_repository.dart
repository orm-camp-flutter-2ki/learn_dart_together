import 'package:learn_dart_together/240402/repository/library_repository.dart';

import '../model/book.dart';

abstract interface class BookRepository implements LibraryRepository {
  loanableBooks();

  getBooksByOrder({required bool isAscending, required BookOrder order});

}
