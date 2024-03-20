import 'package:learn_dart_together/24_03_20/debugging/yukym_controller.dart';
import 'package:test/test.dart';

void main() {
  group('사주 머시깽이 출력 메서드 테스트',() {
    YukymController astrology = YukymController();

    test('getTyA를 호출하면, 경오2국을 리턴한다.',() {
      String a = astrology.getTyA();

      expect(a ,'경오2국');
    });

    test('getTyB의 파라미터값을 1을 주면, 갑자1국을 리턴한다.',() {
      String b = astrology.getTyB(1);

      expect(b ,'갑자1국');
    });
  });
}