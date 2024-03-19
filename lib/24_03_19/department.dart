import 'employee.dart';

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
    'name': name,
    'leader': leader.toJson(),
  };

  Department.from(Map<String, dynamic> json)
      : name = json['name'],
        leader = Employee.from( json['leader']);
}
