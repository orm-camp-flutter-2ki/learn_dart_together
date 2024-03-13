import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;
  double? weight;

  Computer(
    super.name,
    super.price,
    super.color,
    this.makerName
  );

  @override
  void displayInfo() {
    print("Computer: $name, Price: $price, Color: $color, Maker: $makerName");
  }

  @override
  double getWeight() {
    return weight ?? 0.0;
  }

  @override
  void setMass(double value) {
    weight = value;
  }
}

void main() {
  Computer computer = Computer('내 컴퓨터', 200, 'black', 'LG');
  computer.setMass(200);
  computer.displayInfo();
  print('${computer.weight}');
}
