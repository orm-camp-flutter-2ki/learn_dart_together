import 'package:learn_dart_together/24_03_20/debugging/yukym_controller.dart';
import 'package:test/test.dart';

void main() {
  group('사주 머시깽이 출력 메서드 테스트',() {
    YukymController astrology = YukymController();

    test('getTyA를 호출하면, 경오2국을 리턴한다.',() {
      String a = astrology.getTyA();

      expect(a ,'경오2국');
    });

    test('getTyB의 파라미터값을 0또는 1을 주면, 갑자1국을 리턴한다.',() {
      String b = astrology.getTyB(0);

      expect(b ,'갑자1국');

      b = astrology.getTyB(1);

      expect(b ,'갑자1국');
    });

    test('getTyB의 파라미터값을 2 또는 3을 주면, 갑자12국을 리턴한다.',() {
      String b = astrology.getTyB(2);

      expect(b ,'갑자12국');

      b = astrology.getTyB(3);

      expect(b ,'갑자12국');
    });

    test('getTyB의 파라미터값을 4 || 5를 주면, 갑자2국을 리턴한다.',() {
      String b = astrology.getTyB(4);

      expect(b ,'갑자2국');

      b = astrology.getTyB(5);

      expect(b ,'갑자2국');
    });

    test('getTyB의 파라미터값을 6 || 7를 주면, 갑자3국을 리턴한다.',() {
      String b = astrology.getTyB(6);

      expect(b ,'갑자3국');

      b = astrology.getTyB(7);

      expect(b ,'갑자3국');
    });

    test('getTyB의 파라미터값을 8 || 9를 주면, 갑자4국을 리턴한다.',() {
      String b = astrology.getTyB(8);

      expect(b ,'갑자4국');

      b = astrology.getTyB(9);

      expect(b ,'갑자4국');
    });

    test('getTyB의 파라미터값을 10 || 11를 주면, 갑자5국을 리턴한다.',() {
      String b = astrology.getTyB(10);

      expect(b ,'갑자5국');

      b = astrology.getTyB(11);

      expect(b ,'갑자5국');
    });

    test('getTyB의 파라미터값을 12 || 13를 주면, 갑자6국을 리턴한다.',() {
      String b = astrology.getTyB(12);

      expect(b ,'갑자6국');

      b = astrology.getTyB(13);

      expect(b ,'갑자6국');
    });

    test('getTyB의 파라미터값을 14 || 15를 주면, 갑자12국을 리턴한다.',() {
      String b = astrology.getTyB(14);

      expect(b ,'갑자12국');

      b = astrology.getTyB(15);

      expect(b ,'갑자12국');
    });

    test('getTyB의 파라미터값을 16 || 17를 주면, 갑자7국을 리턴한다.',() {
      String b = astrology.getTyB(16);

      expect(b ,'갑자7국');

      b = astrology.getTyB(17);

      expect(b ,'갑자7국');
    });

    test('getTyB의 파라미터값을 18 || 19를 주면, 갑자8국을 리턴한다.',() {
      String b = astrology.getTyB(18);

      expect(b ,'갑자8국');

      b = astrology.getTyB(19);

      expect(b ,'갑자8국');
    });

    test('getTyB의 파라미터값을 20 || 21를 주면, 갑자9국을 리턴한다.',() {
      String b = astrology.getTyB(20);

      expect(b ,'갑자9국');

      b = astrology.getTyB(21);

      expect(b ,'갑자9국');
    });

    test('getTyB의 파라미터값을 22 || 23를 주면, 갑자10국을 리턴한다.',() {
      String b = astrology.getTyB(22);

      expect(b ,'갑자10국');

      b = astrology.getTyB(23);

      expect(b ,'갑자10국');
    });
  });
}