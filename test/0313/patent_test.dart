import 'package:learn_dart_together/0313/patent.dart';
import 'package:test/test.dart';

void main() {
  test('무형 Patent 인스턴스 생성', () {
    Patent patent = Patent('무형', 'ABC특허', 550000000);

    patent.value = 735000000;

    expect(patent.value, 735000000);
  });
}