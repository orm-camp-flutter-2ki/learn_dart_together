class Person {
  String name;
  int birthYear;

  Person({
    required this.name,
    required this.birthYear,
  });

  // named constructor
  Person.babo() : name = '바보', birthYear = 2000;

  int get age => DateTime.now().year - birthYear;

  static Person mungchunge() {
    return Person(name: '멍청이', birthYear: 2000);
  }
}

void main() {
  Person person = Person(name: 'sss', birthYear: 2000);

  final babo = Person.babo();

  final babo2 = Person.mungchunge();

  print(babo.age);
  print(babo.age);
  print(babo.age);
}

// 2024-03-12 10:54:26.089226
// 2024-03-12 10:54:33.184910