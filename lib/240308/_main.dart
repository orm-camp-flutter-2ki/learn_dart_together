import '../240307/cleric.dart';

void main() {
  Cleric cleric1 = Cleric("아서스", hp: 40, mp: 5);
  Cleric cleric2 = Cleric("아서스", hp: 35);
  Cleric cleric3 = Cleric("아서스");
  // Cleric cleric4 = Cleric(); // error!

  print(cleric1);
  print(cleric2);
  print(cleric3);
}
