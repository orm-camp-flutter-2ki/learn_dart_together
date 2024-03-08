import 'cleric.dart';

void main() {
  final Hero1 = Cleric("아서스1", hp: 40, mp: 5);
  final Hero2 = Cleric("아서스2", hp: 35);
  final Hero3 = Cleric("아서스3");
  // final Hero4 = Cleric();

  print(' ${Hero1.name}, ${Hero1.hp},  ${Hero1.mp}');
  print(' ${Hero2.name}, ${Hero2.hp},  ${Hero2.mp}');
  print(' ${Hero3.name}, ${Hero3.hp},  ${Hero3.mp}');
}
