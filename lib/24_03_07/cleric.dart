/*
성직자는 용사 처럼 이름과 HP를 가지고 있고, 추가로 마법을 사용하기 위한 MP를 가지고 있다.
연습 1에서 작성한 내용이 없는 Cleric 클래스에 “이름", “HP”, “최대 HP”, “MP”, “최대 MP”를 속성으로 추가 하시오.
또한 HP와 최대 HP는 정수로 초기치 50, MP와 최대 MP는 정수로 초기치 10으로 하고,
최대 HP와 최대 MP는 상수 필드로 선언 하시오.
*/

Class Cleric(){
  String name;
  int hp = 50;
  final int maxHp =50;
  int mp =10;
  final int maxMp =10;

  Cleric(this.name, this.hp, this.maxHp, this.mp, this.maxMp)

  void selfAid(){
    mp -= 5;
    hp = maxHp;
  }
}

/*
성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
연습 1-2 에 선언한 Cleric 클래스에 “selfAid()” 메소드를 추가 하시오.
또한, 이 메소드는 인수가 없고, 리턴 값도 없다.
*/

