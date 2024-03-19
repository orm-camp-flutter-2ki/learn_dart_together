import 'package:learn_dart_together/24_03_19/-3/employee.dart';
import 'package:test/test.dart';

void main() {
  group('Employee 클래스', () {
    group('toJson 메소드는', () {
      test('Employee로 만든 인스턴스를 Map으로 변환해서 반환한다.', () {
        // Given
        String name = '홍길동';
        int age = 30;
        final employee = Employee(name, age);

        // When
        final result = employee.toJson();

        // Then
        expect(result['name'], name);
        expect(result['age'], age);
      });
    });

    group('toObject 메소드는', () {
      test('json을 Employee로 변환해서 반환한다.', () {
        // Given
        String name = '홍길동';
        int age = 30;
        final employee = Employee(name, age);
        final json = employee.toJson();

        // When
        final result = employee.toObject(json);

        // Then
        expect(result, employee);
      });
    });
  });
}
