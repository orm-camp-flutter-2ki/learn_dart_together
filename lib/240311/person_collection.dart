class Person {
  String name;
  int? age;

  Person({required this.name, this.age});

  Map<String, dynamic> toMap() { //한번에 오는 값을 .toString으로 쓰기 힘듦 다양하게 올 수 있음 하지만 Map 일 때만 주로 사용
    return {
      'name' : name,
      'age' : age
    };
  }
}
