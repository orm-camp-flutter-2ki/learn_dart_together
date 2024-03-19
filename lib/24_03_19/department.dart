import 'package:learn_dart_together/24_03_19/employee.dart';

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
        'name': name, // 총무부
        'leader': leader.toJson(), // (총무부)리더
      };
}
