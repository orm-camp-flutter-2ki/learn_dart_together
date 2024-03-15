import 'package:learn_dart_together/240314/practice_%20problem2.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240315/book_deepcopy.dart';

void main() {
  Book book = Book(title: '논어', comment: '삶');

  Book clone = book.copyWith();
  Book clone2 = Book(title: '논어', comment: '삶');
  print(clone.comment);
  print(clone2.comment);
}
