import 'package:learn_dart_together/orm_240311/person.dart';
import 'package:test/test.dart';

void main(){
  test('Person Test', (){
    Person person = Person( name: '이한빈', brithYear: 1999);


    print('${person.age}${person.name}');
    // expect(person.age, equals(25));
  });
}