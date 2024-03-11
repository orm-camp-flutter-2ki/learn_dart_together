import 'dart:io';


class PersonWithAge {
  final String name;
  final int birthYear;

  int get age {
    return DateTime.now().year - birthYear;
  }

  PersonWithAge({
    required this.name,
    required this.birthYear,
  });
}

void main() {
  PersonWithAge person = PersonWithAge(name: '현웅', birthYear: 1994);
  print(person.age);
}