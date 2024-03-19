import 'package:learn_dart_together/24_03_19/-3/mappable.dart';

class Employee implements Mappable {
  final String _name;
  final int _age;

  Employee(this._name, this._age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Employee &&
          runtimeType == other.runtimeType &&
          _name == other._name &&
          _age == other._age;

  @override
  int get hashCode => _name.hashCode ^ _age.hashCode;

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
