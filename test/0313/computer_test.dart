import 'package:learn_dart_together/0313/computer.dart';
import 'package:test/test.dart';

void main() {
  test('유형 Computer 인스턴스 생성', () {
    Computer computer = Computer('유형', '2023 iMac 24', 3370000, 4.43, '퍼플', '애플');

    computer.weight = 4.48;

    expect(computer.weight, equals(4.48));
  });
}