import 'package:learn_dart_together/0308/cleric.dart';

void main() {
  Cleric cleric = Cleric('zi존마법사ABC', mp: 3);

  for (int i = 1; i <= 3; i++) {
    cleric.selfAid(i);
  }

  for (int i = 1; i <= 3; i++) {
    cleric.pray(5, i);
  }
}