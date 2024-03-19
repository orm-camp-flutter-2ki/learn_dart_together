// ignore_for_file: public_member_api_docs, sort_constructors_first
class Employee {
  String name;
  int age;

  Employee(
    this.name,
    this.age,
  );

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}

class Departemnet {
  String name;
  Employee leader;

  Departemnet(
    this.name,
    this.leader,
  );

  Departemnet.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = json['leader'];
}
