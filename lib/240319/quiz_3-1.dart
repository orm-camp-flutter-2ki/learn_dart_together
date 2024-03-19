import 'package:learn_dart_together/240319/quiz_3.dart';

class Department {
  String name;
  Employee leader;

  Department(this.leader, this.name);

  Map<String, dynamic> toJson() => {
    'leader' : leader,
    'name' : name,
  };
}