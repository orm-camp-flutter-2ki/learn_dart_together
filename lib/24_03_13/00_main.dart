import 'package:learn_dart_together/24_03_13/06_patent.dart';

import '03_computer.dart';
import '04_book.dart';

void main() {
  Computer computer = Computer(
      name: '111',
      price: 10000,
      color: 'black',
      makerName: 'bbbbb',
      weight: 14.3);

  Book book = Book(
      name: 'aaa', price: 1000, color: 'blue', isbn: 'aa1122', weight: 10.5);

  Patent patent = Patent(name: '추상메소드', value: 1000000, patNum: 18403223);

  computer.printInfo();
  book.printInfo();
  patent.printInfo();
}
