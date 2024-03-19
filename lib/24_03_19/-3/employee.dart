import 'package:learn_dart_together/24_03_19/-3/mappable.dart';

class Employee implements Mappable {
  String _name;
  int _age;

  Employee(this._name, this._age);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': _name,
      'age': _age,
    };
  }

  @override
  Employee toObject(Map<String, dynamic> json) {
    return Employee(json['name'], json['age']);
  }
}
