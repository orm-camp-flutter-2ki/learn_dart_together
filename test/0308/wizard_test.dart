import 'package:learn_dart_together/0308/wizard.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('마법사와 지팡이 이름 값 테스트', () {
    Wizard wizard = Wizard(name: 'd', hp: 40, mp: 10);

    wizard.name = 'w';

  });
}