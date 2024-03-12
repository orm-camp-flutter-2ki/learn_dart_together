import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:learn_dart_together/24_03_12/slime.dart';

class PoisonSlime extends Slime {
  static const int _defaultPoisonSkillRemainingCharges = 5;
  int _poisonSkillRemainingCharges;

  PoisonSlime(super.suffix)
      : _poisonSkillRemainingCharges = _defaultPoisonSkillRemainingCharges;

  @override
  void attack(Wizard wizard) {
    super.attack(wizard);
    if (_poisonSkillRemainingCharges > 0) {
      print('추가로, 독 포자를 살포했다!');
      int damage = _calculatePoisonDamageValue(wizard.hp);
      wizard.hp = wizard.hp - damage;
      print('$damage포인트의 데미지');
      _poisonSkillRemainingCharges--;
    }
  }

  int _calculatePoisonDamageValue(int hp) => hp ~/ 5;
}
