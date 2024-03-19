import 'package:learn_dart_together/24_03_19/-3/employee.dart';
import 'package:learn_dart_together/24_03_19/-3/mappable.dart';

class Department implements Mappable {
  String name;
  Employee manager;

  Department(this.name, this.manager);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'manager': manager.toJson(),
    };
  }

  @override
  Department toObject(Map<String, dynamic> json) {
    return Department(json['name'],
        Employee(json['manager']['name'], json['manager']['age']));
  }
}
