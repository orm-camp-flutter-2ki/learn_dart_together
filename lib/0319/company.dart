/// 부서 클래스
class Department {
  String departmentTeam;
  String teamNumber;

  Department({required this.departmentTeam, required this.teamNumber});
}

/// 사원 클래스
class Employee extends Department {
  String name;
  int age;

  Employee({
    required super.departmentTeam,
    required super.teamNumber,
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return '[$departmentTeam부 $teamNumber팀] $name ($age세)';
  }
}

void main() {
  // Department GeneralAffairs = Department('총무', 6);
}

/*
* dart의 직렬화/역직렬화는 class <-> Json(Map과 형태 같음)
* 총무부 리더 '홍길동(41세)'의 인스턴스를 생성
* 인스턴스를 직렬화 하여 company.txt 파일에 쓰는 프로그램 작성
* */
