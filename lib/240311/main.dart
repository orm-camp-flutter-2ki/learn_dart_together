import '../240307/hero.dart';

main() {
  final hero = Hero(name: '홍길동', hp: 100);
  hero.name = 'a';

  print(hero.name);
}
