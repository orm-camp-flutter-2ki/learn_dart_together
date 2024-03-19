import 'package:learn_dart_together/24_03_19/-3/employee.dart';
import 'package:learn_dart_together/24_03_19/-3/mappable.dart';

class Department implements Mappable {
  final String _name;
  final Employee _manager;

  Department(this._name, this._manager);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Department &&
          runtimeType == other.runtimeType &&
          _name == other._name &&
          _manager == other._manager;

  @override
  int get hashCode => _name.hashCode ^ _manager.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': _name,
      'manager': _manager.toJson(),
    };
  }

  @override
  Department toObject(Map<String, dynamic> json) {
    return Department(json['name'],
        Employee(json['manager']['name'], json['manager']['age']));
  }
}
