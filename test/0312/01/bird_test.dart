import 'package:learn_dart_together/0312/02/bird.dart';
import 'package:test/test.dart';

void main() {
  test('Bird 인스턴스 생성', () {
    Bird bird = Bird('새', '짹짹', 2);
    bird.cry();
    bird.buildNest();
    expect(bird.leg, 2);
  });
}