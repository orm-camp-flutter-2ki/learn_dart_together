import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:test/test.dart';

void main() {
  test('wand mp maximum check - less than 100.0', () {
      Wand wand = Wand(name: '지팽이', power: 50);
      wand.setPower = 200;
  });

  test('wand mp minimum check - more than 0.5', () {
    Wand wand = Wand(name: '지팽이', power: 50);
    wand.setPower = 0;
  });

  test('wand name length check - more than char 3', () {
    Wand wand = Wand(name: '지팽이', power: 50);
    wand.setName = '지팡';
  });
}