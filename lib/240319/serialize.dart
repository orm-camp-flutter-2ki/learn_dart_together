import 'dart:convert';
import 'dart:io';

class Employee {
  String _name;
  int _age;

  Employee(this._name, this._age);

  Map<String, dynamic> _toJson() => {
    'name': _name,
    'age': _age,
  };
}

class Department {
  String _name;
  Employee _leader;

  Department(this._name, this._leader);

  Map<String, dynamic> _toJson() => {
    'name': _name,
    'leader': {
      'name': _leader._name,
      'age': _leader._age
    }
  };

  void createTxtFile() {
    final file = File('test/240319/company.txt');
    file.writeAsStringSync(jsonEncode(_toJson()));
  }
}