import 'package:test/test.dart';
import 'package:learn_dart_together/240311/person.dart';

void main(){
  test('person test', () {
    Person person = Person('변희선', 1995);
    print(person.age);
  });
}