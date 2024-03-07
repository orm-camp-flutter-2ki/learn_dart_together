import 'dart:math';
import 'dart:io';

class Cleric {
  String name = '김하준';
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  void selfAid() {
    stdout.writeln('');

    if (mp < 5) {
      stdout.writeln('*마법 사용 : 셀프 에이드*');
      stdout.writeln('(MP가 부족하여 셀프 에이드를 사용할 수 없습니다.)');
      return;
    }

    stdout.writeln('*마법 사용 : 셀프 에이드*');
    stdout.write('사용 전 HP :$hp -> ');
    hp = maxHp;
    stdout.writeln('사용 후 HP :$hp');

    stdout.write('사용 전 MP :$mp -> ');
    mp -= 5;
    stdout.writeln('사용 후 MP :$mp');
  }

  void pray(int praySec) {
    Random random = Random();
    stdout.writeln('');
    stdout.writeln('*마법 사용 : 기도하기*');
    int recoverMp = praySec + random.nextInt(3);
    stdout.writeln('$praySec 초 기도하였습니다. MP를 $recoverMp 회복합니다.');

    if ((mp + recoverMp) < maxMp) {
      stdout.write('사용 전 MP :$mp -> ');
      mp += recoverMp;
      stdout.writeln('사용 후 MP :$mp');

    } else {
      stdout.write('사용 전 MP :$mp -> ');
      mp = maxMp;
      stdout.writeln('사용 후 MP :$mp (최대 MP를 초과하여 회복되지 않습니다.)');
    }
  }
}

void main() {
  Cleric cleric = Cleric();
  cleric.selfAid();
  cleric.selfAid();
  cleric.selfAid();
  cleric.pray(1);
  cleric.pray(2);
  cleric.pray(3);
  cleric.pray(2);
  cleric.pray(1);
}