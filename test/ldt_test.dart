import 'package:learn_dart_together/24_03_07/wand.dart';
import 'package:learn_dart_together/24_03_07/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard power', () {
    // 마법사의 지팡이 생성
    final wand = Wand('지팡이', 5);
    // 마법사 생성
    final wizard = Wizard('마법사', 100, 50, wand);

    // 테스트: 마법사의 마력이 음수일 때 0으로 설정되는지 확인
    wizard.hp = -1;
    expect(wizard.hp, equals(0));

    // 테스트: 마법사의 마력이 0으로 설정될 때 처리되는지 확인
    wizard.mp = 0;
    expect(wizard.mp, equals(0));

    // 테스트: 마법사의 이름 변경이 제대로 이루어지는지 확인
    wizard.name = '대마법사';
    expect(wizard.name, equals('대마법사'));

    // 테스트: 마법사의 지팡이 파워가 제대로 설정되는지 확인
    wand.power = 100.0;
    expect(wand.power, equals(100.0));

    // 테스트: 마법사의 지팡이 이름이 제대로 변경되는지 확인
    wand.name = '대지팡이';
    expect(wand.name, equals('대지팡이'));
  });
}
