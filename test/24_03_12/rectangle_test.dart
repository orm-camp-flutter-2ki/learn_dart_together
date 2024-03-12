import 'package:learn_dart_together/24_03_12/point.dart';
import 'package:learn_dart_together/24_03_12/rectangle.dart';
import 'package:test/test.dart';

void main() {
  group('Rectangle 클래스', () {
    group('생성자는', () {
      test('width, height, topLeft 속성을 받아서 할당한다.', () {
        // Given
        int width = 10;
        int height = 20;
        Point topLeft = Point(0, 0);

        // When
        Rectangle rectangle = Rectangle(width, height, topLeft);

        // Then
        expect(rectangle, isNotNull);
      });
    });

    group('calculateArea 메소드는', () {
      test('width와 height를 이용하여 너비를 구해 반환한다.', () {
        // Given
        int width = 10;
        int height = 20;
        Point topLeft = Point(0, 0);
        Rectangle rectangle = Rectangle(width, height, topLeft);

        // When
        int area = rectangle.calculateArea;

        // Then
        expect(area, equals(width * height));
      });
    });

    group('calculatePerimeter 메소드는', () {
      test('width와 height를 이용하여 둘레를 구해 반환한다.', () {
        // Given
        int width = 10;
        int height = 20;
        Point topLeft = Point(0, 0);
        Rectangle rectangle = Rectangle(width, height, topLeft);

        // When
        int perimeter = rectangle.calculatePerimeter;

        // Then
        expect(perimeter, equals(2 * (width + height)));
      });
    });
  });
}
