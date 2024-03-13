// 2. 아래의 방침에 따라, 생성자를 추가 하시오
// 이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
// 이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
// 이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
// 이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
// 생성자는 가능한 한 중복되는 코드가 없도록 작성한다

class Cleric {

  String name;
  int hp;
  int mp;

  static const int maxHp = 50;
  static const int maxMp = 10;

  //생성자
  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});
// }
//
// void main(){
//   final cleric1 = Cleric('아서스',hp: 40,mp: 5);
//   final cleric2 = Cleric('아서스',hp: 35);
//   final cleric3 = Cleric('아서스');
  //final cleric4 = Cleric(); //인스턴스화 할 수 없다.

  //확인용 코드
  // print('===== 클래릭1 생성 =====');
  // print('${cleric1.hp}, ${cleric1.mp}');
  //
  // print('===== 클래릭2 생성 =====');
  // print('${cleric2.hp}, ${cleric2.mp}');
  //
  // print('===== 클래릭3 생성 =====');
  // print('${cleric3.hp}, ${cleric3.mp}');

  //print('===== 클래릭4 생성 =====');
  //print('${cleric4.hp}, ${cleric4.mp}');
  //에러뜨면 오케이


}
