import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/0319/file_copy.dart';

/// 부서 클래스
class Department {
  String departmentTeam;
  String officeTel;

  Department({required this.departmentTeam, required this.officeTel});

  /// 직렬화 : Map를 Json형태의 String으로 변환
  Map<String, dynamic> toJason() => {
        'departmentTeam': departmentTeam,
        'officeTel': officeTel,
      };

  /// 역직렬화 : Sring형태의 Json을 Map으로 변환
  Department.fromJason(Map<String, dynamic> json)
      : departmentTeam = json['departmentTeam'],
        officeTel = json['officeTel'];

  @override
  String toString() {
    return '[$departmentTeam Tel.$officeTel]';
  }
}

/// 사원 클래스
class Employee {
  String companyHierarchy;
  String name;
  int age;

  Employee({
    required this.companyHierarchy,
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return '$name $companyHierarchy ($age세)';
  }

  /// 직렬화 : Map를 Json형태의 String으로 변환
  Map<String, dynamic> toJason() => {
        'companyHierarchy': companyHierarchy,
        'name': name,
        'age': age,
      };

  /// 역직렬화 : Sring형태의 Json을 Map으로 변환
  Employee.fromJason(Map<String, dynamic> json)
      : companyHierarchy = json['companyHierarchy'],
        name = json['name'],
        age = json['age'];
}

/*
* dart의 직렬화/역직렬화는 class <-> Json(Map과 형태 같음)
* 총무부 리더 '홍길동(41세)'의 인스턴스를 생성
* 인스턴스를 직렬화 하여 company.txt 파일에 쓰는 프로그램 작성
* */
