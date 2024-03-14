import 'package:learn_dart_together/24_03_14/practice_2to3/a_class.dart';
import 'package:learn_dart_together/24_03_14/practice_2to3/b_class.dart';
import 'package:learn_dart_together/24_03_14/practice_2to3/y_abstract_class.dart';

void main() {
  final List<Y> printers = [];

  Y y1 = A();
  Y y2 = B();

  printers.add(y1);
  printers.add(y2);

  for (Y printer in printers) {
    printer.b();
  }
}
