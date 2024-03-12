import 'package:dart_cli_practice/240311/wand.dart';
import 'package:test/test.dart';

void main() {
  test('wand name test', () {
    // give
    Wand wand = Wand("지팡이", 10);

    // when, then
    expect(() => wand.name = '팡이', throwsException); // Exception 발생을 기대
    expect(() => wand.name = '지팡이', returnsNormally); // 정상 처리 됨을 기대
  });

  test('wand power test', () {
    // give
    Wand wand = Wand("지팡이", 10);

    // when, then
    expect(() => wand.power = 0.2, throwsException); // Exception 발생
    expect(() => wand.power = 0.5, returnsNormally); // 정상 처리
    expect(() => wand.power = 101, throwsException); // Exception 발생
    expect(() => wand.power = 95, returnsNormally); // 정상 처리
  });
}
