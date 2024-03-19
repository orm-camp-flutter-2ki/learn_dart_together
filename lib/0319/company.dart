/// 사원 클래스
class Employee {
  String name;
  int age;

  Employee(this.name, this.age);
}

/// 부서 클래스
class Department {
  String name;
  int age;

  Department(this.name, this.age);
}

/*
*
* 총무부 리더 '홍길동(41세)'의 인스턴스를 생성
* 인스턴스를 직렬화 하여 company.txt 파일에 쓰는 프로그램 작성
* */