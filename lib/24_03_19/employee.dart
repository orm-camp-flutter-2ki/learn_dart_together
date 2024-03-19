import 'department.dart';

class Employee {
  final String _name;
  final int _age;
  final Department? _department; // 사원에 부서 필드 추가, 사원을 생성할 때 소속된 부서가 없을 수?도 있다!? ㅠㅠ

  Employee(this._name, this._age, this._department); // 사원 생성자 수정

  // json으로부터 객체를 생성하는 생성자
  Employee.fromJson(Map<String, dynamic> json) : // 직렬화를 위한 생성자 수정
    _name = json['name'],
    _age = json['age'],
    _department = Department.fromJson(json['department']);

  // 객체를 json 형태로 표현하는 메서드
  Map<String, dynamic> toJson() => {
    'name': _name,
    'age': _age,
    'department': _department?.departmentName
  };
}