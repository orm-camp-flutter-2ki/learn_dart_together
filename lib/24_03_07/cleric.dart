import 'dart:math';

void main() {
  Cleric itsMe = Cleric('Howard');

  itsMe.selfAid();
  itsMe.decreaseStatus(5, 5);
  print('MP회복량: ${itsMe.pray(second: 3)}');
  print('MP회복량: ${itsMe.pray(second: 5)}');
}

class Cleric {
  String name;
  int hp = 10;
  int mp = 10;
  final maxHp = 50;
  final maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    print('셀프힐 시전');
    if (this.hp < this.maxHp && this.mp >= 5) {
      this.hp = this.maxHp;
      this.mp -= 5;
      print('HP가 모두 회복되었습니다.');
    } else if (this.mp < 5){
      print('MP가 부족합니다.');
    } else {
      print('이미 체력이 가득 찼습니다.');
    }
  }

  int pray({int second = 1}) {
    print('$second 초간 기도 시작');
    int randomPoint = Random().nextInt(3);
    int chargedMp = second + randomPoint;

    if (this.mp + chargedMp <= this.maxMp) {
      this.mp = this.mp + chargedMp;
      return chargedMp;
    } else {
      int currentMp = this.mp;
      this.mp = this.maxMp;
      return this.maxMp - currentMp;
    }
  }

  //테스트용 메서드
  void decreaseStatus(int hp, int mp) {
    this.hp -= hp;
    this.mp -= mp;
    print('HP $hp 감소, MP $mp 감소');
  }
}