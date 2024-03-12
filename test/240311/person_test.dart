import 'package:learn_dart_together/Collection_240311/person.dart';
import 'package:test/test.dart';

void main(){
  test('인물 생성 테스트', () {
    Person korean = Person('Hubo', 1999);
    // korean.name = 'Robot'; // name 변경 테스트
    print(korean.age);
    // expect(actual, matcher)
  });
}