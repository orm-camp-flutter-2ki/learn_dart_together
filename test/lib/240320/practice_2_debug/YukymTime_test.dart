import 'package:learn_dart_together/240320/practice_2_debug/YukymTimeModel.dart';
import 'package:learn_dart_together/240320/practice_2_debug/debug2.dart';
import 'package:learn_dart_together/240320/practice_2_debug/yukymController.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('YukymController class', () {
    YukymController yukymController = YukymController();

    group('getTypeA() 는', () {
      test('1~2월인 경우 경오1국 반환', () {
        // Given
        // yukymController.setDateTime(DateTime(2024, 1));
        yukymController.setDateTime = DateTime(2024, 1);
        String expected = '경오1국';

        // When
        String result = yukymController.getTyA();

        // Then
        expect(result, equals(expected));
      });

      test('3~4월인 경우 경오2국 반환', () {
        // Given
        yukymController.setDateTime = DateTime(2024, 3);
        String expected = '경오2국';

        // When
        String result = yukymController.getTyA();

        // Then
        expect(result, equals(expected));
      });

      test('5~6월인 경우 경오3국 반환', () {
        // Given
        // yukymController.setDateTime(DateTime(2024, 1));
        yukymController.setDateTime = DateTime(2024, 5);
        String expected = '경오3국';

        // When
        String result = yukymController.getTyA();

        // Then
        expect(result, equals(expected));
      });

      test('7~8월인 경우 경오4국 반환', () {
        // Given
        // yukymController.setDateTime(DateTime(2024, 1));
        yukymController.setDateTime = DateTime(2024, 7);
        String expected = '경오4국';

        // When
        String result = yukymController.getTyA();

        // Then
        expect(result, equals(expected));
      });

      test('9~10월인 경우 경오5국 반환', () {
        // Given
        // yukymController.setDateTime(DateTime(2024, 1));
        yukymController.setDateTime = DateTime(2024, 9);
        String expected = '경오5국';

        // When
        String result = yukymController.getTyA();

        // Then
        expect(result, equals(expected));
      });

      test('11~12월인 경우 경오6국 반환', () {
        // Given
        // yukymController.setDateTime(DateTime(2024, 1));
        yukymController.setDateTime = DateTime(2024, 11);
        String expected = '경오6국';

        // When
        String result = yukymController.getTyA();

        // Then
        expect(result, equals(expected));
      });
    });

    group('getTypeB() 는', () {
      test('0과 같거나 크고, 2보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 1);
        String expected = YukymTimeModel().ty1;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('2과 같거나 크고, 4보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 2);
        String expected = YukymTimeModel().ty2;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('4과 같거나 크고, 6보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 4);
        String expected = YukymTimeModel().ty3;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('6과 같거나 크고, 8보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 6);
        String expected = YukymTimeModel().ty4;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('8과 같거나 크고, 10보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 8);
        String expected = YukymTimeModel().ty5;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('10과 같거나 크고, 12보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 10);
        String expected = YukymTimeModel().ty6;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('12과 같거나 크고, 14보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 12);
        String expected = YukymTimeModel().ty7;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('14과 같거나 크고, 16보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 14);
        String expected = YukymTimeModel().ty8;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('16과 같거나 크고, 18보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 16);
        String expected = YukymTimeModel().ty9;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('18과 같거나 크고, 20보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 18);
        String expected = YukymTimeModel().ty10;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('20과 같거나 크고, 22보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 20);
        String expected = YukymTimeModel().ty11;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });

      test('22과 같거나 크고, 24보다 작을 때', () {
        // Given
        // 연, 월, 일, 시
        yukymController.setDateTime = DateTime(2024, 1, 1, 22);
        String expected = YukymTimeModel().ty12;

        // When
        String result = yukymController.getTyB();

        // Then
        expect(result, equals(expected));
      });
    });
  });
}
