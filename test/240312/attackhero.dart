import 'package:learn_dart_together/240312/poison_slime.dart';
import 'package:learn_dart_together/240312/super_hero.dart';
import 'package:test/test.dart';

void main(){
  test('attackhero', () {
    final superHero = SuperHero(name: '홍길동', hp: 50);
    final posionslime = PoisonSlime('a');
    posionslime.attack(superHero);
    print(posionslime.attackCount);
    print(superHero.hp);
  });
}