import 'person.dart';

void main() {
  final peopleList = <Person>[];

  peopleList.add(Person("사람1", 20));
  print(peopleList.length);

  peopleList.add(Person("사람2", 30));
  print(peopleList.length);

  // output 1, 2
  // 왜? List는 순서있음, 중복허용 하는 컬렉션이기때문에
  // 같은 객체라도 리스트에 따로 추가될 수 있음

  // Set : 순서없음, 중복불가
  // List 보다 검색 속도가 빠름 -> hashCode 기반으로 동작
  final peopleSet = <Person>{};

  final p1 = Person("사람1", 20);
  final p2 = Person("사람2", 30);

  peopleSet.add(p1);
  print(peopleSet.length);

  peopleSet.remove(p2);
  print(peopleSet.length);

  print(p1.hashCode);
  print(p2.hashCode);
  
  print(p1.hashCode == p2.hashCode);
  print(identical(p1, p2)); // 진짜 주소비교

  // 왜 == 와 hashCode 를 같이 재정의 하는가
  // 컬렉션에 따라 원소의 비교를 == 연산자로 하거나, hashCode 기반으로 하기 때문에
}
