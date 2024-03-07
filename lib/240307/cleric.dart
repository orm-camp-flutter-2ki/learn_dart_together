class Cleric {
  String name;
  int hp;
  int mp;
  final int maxhp = 50;
  final int maxmp = 10; //상수로 선언해야 하는거니 숫자가 들어가야 함

  Cleric(this.name, this.hp, this.mp);
  //매개변수(함수나 메서드가 호출될 때 전달되는 값)로 전달된 값을 클래스의 멤버 변수에 할당하기 위해 this 키워드를 사용
  void selfAid() {
    if (mp == maxmp) {
      mp = maxmp - 5;
      hp = maxhp;
    } else if (5 <= mp && mp < 10) {
      mp = mp - 5;
      hp = maxhp;
    } else if (mp < 5) {
      print('mp가 부족합니다.');
    }
  }

  void pray() {
  }


}






