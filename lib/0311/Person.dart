class Person {
  // field
  final String name;
  final int birthYear;

  // 생성자
  Person({required this.name, required this.birthYear});

  // getter 프로퍼티, age는 나이를 계산하여 반환한다.
  int get age {
    return DateTime.now().year - birthYear; // 오늘 날짜의 년도 - 받은 년도
  }
}

void main() {
  Person me = Person(name: '유순덕', birthYear: 2019);
  print('${me.name}님이 태어난 연도는 ${me.birthYear}년이고, 현재 나이는 ${me.age}살 입니다.');
}
