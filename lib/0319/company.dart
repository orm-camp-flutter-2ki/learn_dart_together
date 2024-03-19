/// 부서 클래스
class Department {
  String departmentTeam;
  String companyHierarchy;

  Department({required this.departmentTeam, required this.companyHierarchy});

  Department.fromJason(Map<String, dynamic> json)
      : departmentTeam = json['departmentTeam'],
        companyHierarchy = json['companyHierarchy'];
}

/// 사원 클래스
class Employee extends Department {
  String name;
  int age;

  Employee({
    required super.departmentTeam,
    required super.companyHierarchy,
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return '[$departmentTeam $companyHierarchy] $name ($age세)';
  }

  /// 직렬화 : Map를 Json형태의 String으로 변환
  Map<String, dynamic> toJason() => {
        'Department': departmentTeam,
        'Hierarchy': companyHierarchy,
        'name': name,
        'age': age,
      };

  /// 역직렬화 : Sring형태의 Json을 Map으로 변환
  Employee.fromJason(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}

void main() {
  // Department GeneralAffairs = Department('총무', 6);
  Employee affairsLeader = Employee(
    departmentTeam: '총무부',
    companyHierarchy: '팀장',
    name: '홍길동',
    age: 41,
  );
}

/*
* dart의 직렬화/역직렬화는 class <-> Json(Map과 형태 같음)
* 총무부 리더 '홍길동(41세)'의 인스턴스를 생성
* 인스턴스를 직렬화 하여 company.txt 파일에 쓰는 프로그램 작성
* */
