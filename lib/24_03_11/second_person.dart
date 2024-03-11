class Person {
  String name;
  int? age;

  Person({required this.name, this.age});

  Map <String, dynamic> toMap(){
    return {
      'name' : name,
      'age' : age
    };
  }

}


