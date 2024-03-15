import 'package:learn_dart_together/240307/hero.dart';

void main() {
  // List
  // 순서있고
  // 중복허용
  // == 기반 동작
  final heroes = <Hero>[];

  final h1 = Hero(name: 'name', hp: 100);    // 100
  final h2 = Hero(name: 'name', hp: 100);    // 200

  print(h1.hashCode == h2.hashCode);    // 개발할 때

  // print(identical(h1, h2));   // 진짜 주소 비교
  // print(h2.hashCode);

  // heroes.add(h1);
  // print(heroes.length);
  //
  // heroes.add(h2);
  // print(heroes.length);

  // 순서 없고 중복 안되고
  // 검색이 빨라
  // hashCode 기반으로 동작
  // Map도 hashCode
  final heroes2 = <Hero>{};
}