import 'package:learn_dart_together/240402/repository/user_repository.dart';

import '../repository/book_repository.dart';
import 'facade.dart';

class LibrarySystemFacade implements Facade {
  final BookRepository _bookRepository;
  final UserRepository _userRepository;

  LibrarySystemFacade(this._bookRepository, this._userRepository);

  // 대출
  @override
  Future<String> loanBook(int userId, int bookId) async {
    String msg = await _userRepository.loanBook(userId, bookId);
    String msg2 = await _bookRepository.loanBook(userId, bookId);

    return '$msg\n $msg2';
  }

  // 반납
  @override
  void returnBook(int userId, int bookId) {
    _bookRepository.returnBook(userId, bookId);
    _userRepository.returnBook(userId, bookId);
  }

  // 연장
  @override
  void delayBook(int userId, int bookId) {
    _bookRepository.delayBook(userId, bookId);
    _userRepository.delayBook(userId, bookId);
  }
}
