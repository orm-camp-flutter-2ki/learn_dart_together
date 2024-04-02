import 'package:intl/intl.dart';
import 'package:learn_dart_together/240402_homework/model/book.dart';
import 'package:learn_dart_together/240402_homework/model/user.dart';

class UserRepository {
  List<Book> books = [];

  void loanBook(Book book) {
    bool isAbleLoan = true;
    final loanDate = DateTime.now();
    final loanDateFormat = DateFormat("yyyy/MM/dd").format(loanDate);

    final returnDate = loanDate.add(Duration(days: 14));
    final returnDateFormat = DateFormat("yyyy/MM/dd").format(returnDate);

    //final birthDate = DateTime.now().year - 1997;
    print(loanDateFormat);
    print(returnDateFormat);
  }
}

void main() {
  Book book = Book(
      id: 0,
      title: 'title',
      publishDate: DateTime.now(),
      isAbleLoan: true,
      loanDate: DateTime.now(),
      returnDate: DateTime.now());
  User user = User(
      id: 0,
      name: 'yejin',
      address: '1',
      birth: DateTime.now(),
      isMember: true,
      createdAt: DateTime.now(),
      loanBooks: []);

  UserRepository().loanBook(book);
  Book bookCopy = book.copyWith(
      isAbleLoan: false, loanDate: DateTime.now(), returnDate: DateTime.now());

  print(bookCopy);
}
