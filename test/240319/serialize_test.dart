import 'package:learn_dart_together/240319/serialize.dart';
import 'package:test/test.dart';

void main() {
  test('Serialize Test', () {
    Employee employee = Employee('홍길동', 41);
    Department department = Department('그냥회사', employee);

    department.createTxtFile();
  });
}