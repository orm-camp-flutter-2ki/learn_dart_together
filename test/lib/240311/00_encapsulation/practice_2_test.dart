import 'package:learn_dart_together/240311/00_encapsulation/practice_2/practice_2.dart';
import 'package:test/test.dart';

void main() {
  test('나이 계산은 올해년도에서 birthYear 년도를 뺀 값을 리턴한다.', () {

    String name = '나오리';
    int birthYear = 2006;

    final person = Person(name: name, birthYear: birthYear);

    print(person.age);
    expect(person.age, equals(DateTime.now().year - birthYear));
  });
}