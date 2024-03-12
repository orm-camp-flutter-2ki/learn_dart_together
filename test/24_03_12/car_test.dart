import 'package:learn_dart_together/24_03_12/car.dart';
import 'package:learn_dart_together/24_03_12/tire.dart';
import 'package:test/test.dart';

void main() {
  group('Car 클래스', () {
    group('생성자는', () {
      test('maker, model, year, tier 속성을 받아서 할당한다.', () {
        // Given
        String maker = '현대';
        String model = '소나타';
        int year = 2021;
        Tier tier = Tier('미쉐린', 17);

        // When
        Car car = Car(maker, model, year, tier: tier);

        // Then
        expect(car, isNotNull);
      });
    });

    group('changeTire 메소드는', () {
      test('새로운 타이어 객체를 받아 갈아끼운다.', () {
        // Given
        String maker = '현대';
        String model = '소나타';
        int year = 2021;
        Tier michelinTier = Tier('미쉐린', 17);
        Tier koreaTier = Tier('코리아', 18);
        Car car = Car(maker, model, year, tier: michelinTier);

        // When
        car.changeTire = koreaTier;

        // Then
        expect(car.tierMaker, equals(koreaTier.maker));
      });
    });
  });
}
