class Cleric {
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric( this.name,this.hp , this.mp);

  void selfAid(){
    if(mp<5){
      print("mp가 부족합니다");
    }else{
      mp = mp - 5
      hp = maxHp
    }
  }

}
