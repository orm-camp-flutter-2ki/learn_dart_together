import 'package:learn_dart_together/240319/exception.dart';
import 'package:test/test.dart';

void main() {
  test('Exception Test', () {
    StringToIntPrinter printer = StringToIntPrinter('3');
    print(printer.getNumString());
    expect(printer.getNumString() == 3, true);

    StringToIntPrinter printer2 = StringToIntPrinter('3.4');
    print(printer2.getNumString());
    expect(printer2.getNumString() == 0, true);
  });
}