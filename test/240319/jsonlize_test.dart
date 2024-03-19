import 'package:test/test.dart';
import 'package:learn_dart_together/240319/jsonlize.dart';

void main() {
  test('Employee 객체 직렬화 및 역직렬화 테스트', () {
    // given
    final employee = Employee('홍길동', 41);

    // when
    final json = employee.toJson();
    final newEmployee = Employee.fromJson(json);

    // then
    expect(newEmployee.name, equals('홍길동'));
    expect(newEmployee.age, equals(41));
  });

  test('Department 객체 직렬화 및 역직렬화 테스트', () {
    // given
    final leader = Employee('홍길동', 41);
    final department = Department('총무부', leader);

    // when
    final json = department.toJson();
    final newDepartment = Department.fromJson(json);

    // then
    expect(newDepartment.name, equals('총무부'));
    expect(newDepartment.leader.name, equals('홍길동'));
    expect(newDepartment.leader.age, equals(41));
  });
}