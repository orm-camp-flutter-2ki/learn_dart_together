import 'package:learn_dart_together/240311/wand.dart';

class Wizard{
  String _name;
  int _hp;
  int _mp;
  Wand wand;

  Wizard(this._name , this._hp , this._mp ,this.wand);
//getter
  String get name => _name;
  int get np =>_hp;
  int get mp =>_mp;
//setter
set name(String value){
  if(value.length <3){
    throw Exception('이름이 너무 짧습니다 3글자 이상 작성하세요');
  }
  _name = value;
}
set mp(int value){
  if(value <0){
    throw Exception('MP는 0이상이여야 합니다');

  }
  _mp = value;
}
set hp(int value){
  value < 0 ? hp = 0 : hp = value;
}
}
