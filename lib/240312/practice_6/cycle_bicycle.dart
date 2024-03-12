import 'package:learn_dart_together/240312/practice_6/bicycle.dart';

class Cycle extends Bicycle{
  Cycle(super.maker, super.model, super.year,
      super.numberOfWheels, super.hasBasket, super.weight);

}

void main() {
  Cycle cycle = Cycle('삼천리', '99', 2021, 2, false, 9.1);

}