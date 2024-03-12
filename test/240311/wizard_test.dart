import 'package:dart_cli_practice/240311/wand.dart';
import 'package:dart_cli_practice/240311/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard name test', () {
    // give
    Wand wand = Wand("지팡이", 10);
    Wizard w1 = Wizard('김멀린', 100, 50, wand);

    expect(() => w1.name = '멀린', throwsException); // Exception 발생을 기대
    expect(() => w1.name = '박멀린', returnsNormally); // 정상 처리 됨을 기대
  });

  test('wizard hp test', () {
    // give
    Wand wand = Wand("지팡이", 10);
    Wizard w1 = Wizard('박멀린', 100, 50, wand);

    // when, then
    expect(() => w1.hp = -200, returnsNormally); // 정상 처리 됨을 기대

    w1.hp = -200;
    expect(w1.hp, 0);
  });

  test('wizard mp test', () {
    // give
    Wand wand = Wand("지팡이", 10);
    Wizard w1 = Wizard('최멀린', 100, 50, wand);

    // when, then
    expect(() => w1.mp = -10, throwsException); // Exception 발생을 기대
    expect(() => w1.mp = 10, returnsNormally); // 정상 처리 됨을 기대
  });
}
