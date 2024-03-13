import 'tangible_asset.dart';

class Computer extends TangibleAsset {

  final String makerName;

  Computer(super.type, super.name, super.value, super.weight, super.color, this.makerName);
}