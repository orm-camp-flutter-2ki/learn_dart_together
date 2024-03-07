import 'dart:math';

void main() {

}

class Cleric {
  String name;
  int hp = 10;
  int mp = 10;
  final maxHp = 50;
  final maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    if (this.hp < this.maxHp) {
      this.hp = this.maxHp;
    } else {
      print('이미 체력이 가득 찼습니다.')
    }
  }
}