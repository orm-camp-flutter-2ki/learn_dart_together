import 'dart:math';

class Cleric{
  String name;
  int hp;
  int mp;
  final int maxhp =50;
  final int maxmp =10;
  Cleric(this.name, this.hp, this.mp);

  void selfAid(){
    mp -= 5;
    hp = maxhp;
  }

  int pray(a){
    int sec = a;
    int recovery = sec + Random().nextInt(3);
    int b= -(mp-maxmp);
    mp += recovery ;
    if(mp >= maxmp){
      recovery = b;
      mp = maxmp;
    }
    return recovery;
  }


}