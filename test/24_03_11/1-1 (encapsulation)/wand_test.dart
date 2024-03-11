
import 'package:learn_dart_together/24_03_11/1-1%20(encapsulation)/wand.dart';
import 'package:test/test.dart';

void main() {
  test('Wand Test', () {

    Wand wand = Wand(name: "1lv 지팡이", power: 2);

    wand.name = '말뚝';
  });

  test('Wand Power Test', () {
    Wand wand = Wand(name: "1lv 지팡이", power: 10);

    wand.power = 0.2;
  });
}