import 'package:learn_dart_together/24_03_19/-3/mappable.dart';

class Employee implements Mappable {
  String name;
  int age;

  Employee(this.name, this.age);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  @override
  Employee toObject(Map<String, dynamic> json) {
    return Employee(json['name'], json['age']);
  }
}
