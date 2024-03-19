import 'package:learn_dart_together/24_03_19/-3/department.dart';
import 'package:learn_dart_together/24_03_19/-3/employee.dart';
import 'package:test/test.dart';

void main() {
  group('Department 클래스', () {
    group('toJson 메소드는', () {
      test('Department로 만든 인스턴스를 Map으로 변환해서 반환한다.', () {
        // Given
        String departmentName = '개발팀';
        String name = '홍길동';
        int age = 30;
        final employee = Employee(name, age);
        final department = Department(departmentName, employee);

        // When
        final result = department.toJson();

        // Then
        expect(result['name'], departmentName);
        expect(result['manager'], employee.toJson());
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
