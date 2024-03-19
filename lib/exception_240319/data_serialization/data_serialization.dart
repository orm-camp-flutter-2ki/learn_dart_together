class Employee {
  String name;
  int age;

  Employee(this.name, this.age);
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);
}

void main (){
  Employee employee = Employee('홍길동', 41);
}