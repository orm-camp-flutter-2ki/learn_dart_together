import 'package:learn_dart_together/24_03_19/data_formats/employee.dart';

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson(),
  };
}