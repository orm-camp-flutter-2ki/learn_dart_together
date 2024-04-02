import 'facade/facade.dart';

/// 비지니스 로직
/// 값 반환 할 것
class LibrarySystem {
  final Facade _facade;

  LibrarySystem(this._facade);

  Future<String> loanBook(int userId, int bookId) async {
    try {
      return await _facade.loanBook(userId, bookId);
    } catch (s, e) {
      return 'Error loaning book: $e :: $s';
    }
  }

  Future<void> returnBook(int userId, int bookId) async {
    try {
      _facade.returnBook(userId, bookId);
      print('Book returned successfully.');
    } catch (e) {
      print('Error returning book: $e');
    }
  }

  Future<void> delayBook(int userId, int bookId) async {
    try {
      _facade.delayBook(userId, bookId);
      print('Book loan extended successfully.');
    } catch (e) {
      print('Error extending loan: $e');
    }
  }
}
