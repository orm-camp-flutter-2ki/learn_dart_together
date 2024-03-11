class Person {
  final String _name;
  final int _birthYear;

  Person({
    required String name,
    required int brithYear,
  }): _birthYear = brithYear, _name = name;

  String get name => _name;
  int get brithYear => _birthYear;

  int age(int value){
    final now= DateTime.now().year;
    final age = now - value;
    return age;
  }

}



void main(){
  Person person = Person(name: '이수남', brithYear: 1999);
  int age_01=person.age(person.brithYear);
  print('age : $age_01');
}

