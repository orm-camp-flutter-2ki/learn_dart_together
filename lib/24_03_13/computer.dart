import 'package:learn_dart_together/24_03_13/tangible_asset.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

class Computer extends TangibleAsset {
  String makerName;
  double _weight;

  Computer(
    super.name,
    super.price,
    super.color,
    this._weight,
    this.makerName
  );

  @override
  void displayInfo() {
    print("Computer: $name, Price: $price, Color: $color, Maker: $makerName");
  }

  @override
  double get weight {
    return _weight ?? 0.0;
  }

  @override
  set mass(double value) {
    _weight = value;
  }
}

void main() {
  Computer computer = Computer('내 컴퓨터', 200, 'black', 300.0, 'LG');
  computer.mass = 200.0;
  computer.displayInfo();
  print('${computer.weight}');
}
