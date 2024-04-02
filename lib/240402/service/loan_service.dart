import 'package:dart_cli_practice/240402/model/book.dart';

abstract interface class LoanService {
  Future<void> loanBook(String memberId, String bookId);

  Future<void> returnBook(String memberId, String bookId);

  Future<void> extendLoan(String memberId, String bookId);

  Future<List<Book>> searchAvailableBooks();
}
