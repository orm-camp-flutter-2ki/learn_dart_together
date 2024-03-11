import 'package:learn_dart_together/240311/encaps/person.dart';

void main() {
  // Person({required String name, required int birthYear})
  Person hong = Person(name: '홍길동', birthYear: 2000);
  Person han = Person(name: '한석봉', birthYear: 2001);

  List persons = [hong, han];

  for (Person person in persons) {
    print(person.name);
  }
}
