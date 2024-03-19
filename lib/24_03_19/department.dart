import 'package:learn_dart_together/24_03_19/employee.dart';

class Department {
  String name;
  Employee leader;

  Department({required this.name, required this.leader});

  Map<String,dynamic> toJson() => {
    'name': name,
    'leader' : leader.toJson()
  };
}