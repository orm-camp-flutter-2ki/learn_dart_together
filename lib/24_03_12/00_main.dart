import '01_hero.dart';
import '02_superHero.dart';

void main() {
  Hero man = Hero(name: '히어로', hp: 100);
  SuperHero superMan = SuperHero(name: '슈퍼맨', hp: 100);

  man.run();
  superMan.run();


}