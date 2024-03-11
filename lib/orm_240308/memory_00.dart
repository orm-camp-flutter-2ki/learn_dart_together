import 'hero.dart';

void main(){
  final hero1 = Hero (name: '킬동', hp: 100);
  final hero2 = hero1;
  hero2.hp = 200;
  print(hero2);
}

