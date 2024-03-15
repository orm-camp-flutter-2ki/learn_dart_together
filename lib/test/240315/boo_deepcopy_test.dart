import 'package:learn_dart_together/240314/practice_%20problem2.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240315/book_deepcopy.dart';

void main() {
  Book book = Book(title: '논어', comment: '삶');
  Book clone = book.copyWith();
  Book clone2 = Book(title: '논어', comment: '삶');
  print('${clone.comment} ,${clone.title}');
  print('${clone2.comment} ,${clone2.title}');
  print('${book.comment} ,${book.title}');
  // 깊은 복사여도 이름만 같고 주소값은 다른듯?
  print(identical(book, clone)); // false
  print(identical(book, clone2)); // false
  print(identical(clone, clone2)); // false
}
