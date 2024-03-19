// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

void main() {
  Departemnet hong = Departemnet('총무부', Employee('홍길동', 41));

  String jsonString = jsonEncode(hong);

  print(jsonString);
}
