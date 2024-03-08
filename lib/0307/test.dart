import 'package:learn_dart_together/0307/cleric.dart';

void main() {
  Cleric cleric = Cleric('zi존마법사ABC');

  for (int i = 1; i <= 3; i++)
    cleric.selfAid(i);

  for (int i = 1; i <= 3; i++)
    cleric.pray(5, i);
}