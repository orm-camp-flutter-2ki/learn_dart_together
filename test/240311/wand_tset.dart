import 'package:learn_dart_together/240311/wand.dart';
import 'package:test/test.dart';

void main() {
  test('wnad name test', () {
    Wand wand = Wand(name: '지팡이', power: 99.0);
    wand.name = 'a';
  });

  test('wnad power test', () {
    Wand wand = Wand(name: '지팡이', power: 99.0);
    wand.power = 0;
  });
}
