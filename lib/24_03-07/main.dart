import 'cleric.dart';

void main() {
  Cleric cleric = Cleric('chan', 10, 10);

  print(cleric.name);
  cleric.pray(2);
  cleric.selfAid();
}
