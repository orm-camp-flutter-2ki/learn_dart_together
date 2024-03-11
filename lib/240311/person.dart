void main(){
  Person yuna = Person('윤아',1994);
  print(yuna.age);
}

class Person {
  final String name;
  final int birthYear;


  Person(this.name, this.birthYear);

  int get age {
    return DateTime
        .now()
        .year - birthYear;
  }
}

