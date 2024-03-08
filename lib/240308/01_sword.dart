import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/sword.dart';

void main() {
  final fireSword = Sword(name: '불의검', damage: 5);
  final superMan = Hero(name: '슈퍼맨', hp: 100);

  // 칼 찼어
  superMan.sword = fireSword;

  // 칼 뺄래
  superMan.sword = null;
}
