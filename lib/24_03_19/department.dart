import 'employee.dart';

class Department {
  final String _departmentName; // Employee 클래스에 있는 name과 구분짓고 싶어서 변수명을 변경해봤습니다.
  final Employee _leader;

  Department(this._departmentName, this._leader);

  String get departmentName => _departmentName;

  Department.fromJson(Map<String, dynamic> json)
    : _departmentName = json['name'],
      _leader = Employee.fromJson(json['leader']);
}