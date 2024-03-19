import 'dart:convert';
import 'dart:io';

class Employee {
  String _name;
  int _age;

  Employee(this._name, this._age);

  Map<String, dynamic> toJson() => {
    'name': _name,
    'age': _age,
  };
}

class Department {
  String _name;
  Employee _leader;

  Department(this._name, this._leader);

  Map<String, dynamic> toJson() => {
    'name': _name,
    'leader': _leader.toJson()
    // 상위 클래스에 toJson이 있으면 Line 24의 toJson() 생략 가능
  };

  void createTxtFile() {
    final file = File('test/240319/company.txt');
    file.writeAsStringSync(jsonEncode(toJson()));
  }
}