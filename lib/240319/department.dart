import 'package:learn_dart_together/240319/employee.dart';

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);
  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = json['leader'];
  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}
