import 'package:learn_dart_together/24_03_07/hero.dart';
import 'package:learn_dart_together/24_03_07/sword.dart';

void main(){
  final fireSword = Sword(name: '불의 검', damage: 5);
  final superMan = Hero(name: '슈퍼맨', hp: 100);
  final batMan = Hero(name: '배트맨', hp: 100);

  // 칼 장착
  superMan.sword = fireSword;

  // 칼 탈착
  superMan.sword = null;
}