import 'package:learn_dart_together/240312/practice_6/bicycle.dart';

class Unicycle extends Bicycle {
  Unicycle(super.maker, super.model, super.year,
      super.numberOfWheels, super.hasBasket, super.weight);

}

void main() {
  Unicycle unicycle = Unicycle('삼천리', 'model', 2019, 1, false, 8.5);

}