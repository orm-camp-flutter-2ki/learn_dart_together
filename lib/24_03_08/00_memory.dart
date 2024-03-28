
import '../24_03_07/hero.dart';

void main(){
  final hero1 = Hero(name: '홍길동', hp: 100);
  final hero2 = hero1;

  print(hero1.hp);
}

