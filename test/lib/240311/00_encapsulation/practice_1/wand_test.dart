import 'package:learn_dart_together/240311/00_encapsulation/practice_1/wand.dart';
import 'package:test/test.dart';

void main() {
  test( 'Wand test', () {

    final wand = Wand(name: '완드', power: 1);

    // wand.name = '완드';
    wand.power = 0.3;

  });
}