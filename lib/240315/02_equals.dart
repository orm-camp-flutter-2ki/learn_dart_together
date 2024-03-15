import '../240307/hero.dart';
import '../240307/sword.dart';

void main() {
  // List : 중복 허용, 순서 있음
  // == 기반으로 동작
  final heroList = <Hero>[];

  final h1 = Hero(name: '1번 hero', hp: 100);
  final h2 = Hero(name: '2번 hero', hp: 100);

  heroList.add(h1);
  heroList.add(h2);

  print(heroList.length);

  // Set : 중복 안됨, 순서 없음,
  // hashCode 를 이용해서 검색하기 때문에 검색 속도가 빠르다.
  final heroSet = <Hero>{};

  final h3 = Hero(name: '1번 hero', hp: 100);
  final h4 = Hero(name: '2번 hero', hp: 100);

  heroSet.add(h3);
  print(heroSet.length);
  heroSet.remove(h4);
  print(heroSet.length); // 다른 Hero 둘이기 때문에 결과는 1,1

  Hero hero = Hero(name: '3번 hero', hp: 50, sword: Sword(name: '불의 검', damage: 3));
  Hero hero2 = Hero(name: '3번 hero', hp: 50, sword: Sword(name: '불의 검', damage: 3));
  print(hero == hero2);
}