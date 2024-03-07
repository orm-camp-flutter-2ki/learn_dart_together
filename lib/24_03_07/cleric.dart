import 'dart:math';

void main() {
  Cleric itsMe = Cleric('Howard');

  itsMe.selfAid();
  print('현재 상태 - HP: ${itsMe.hp}, MP: ${itsMe.mp}');
  print('${itsMe.pray(second: 3)}만큼 MP를 회복했습니다.');
  print('현재 상태 - HP: ${itsMe.hp}, MP: ${itsMe.mp}');
  print('${itsMe.pray(second: 3)}만큼 MP를 회복했습니다.');
}

class Cleric {
  String name;
  int hp = 10;
  int mp = 10;
  final maxHp = 50;
  final maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    if (this.hp < this.maxHp && this.mp > 2) {
      this.hp = this.maxHp;
      this.mp -= 2;
    } else {
      print('이미 체력이 가득 찼습니다.');
    }
  }

  int pray({int second = 1}) {
    var random = Random();
    int randomPoint = random.nextInt(2);
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
}