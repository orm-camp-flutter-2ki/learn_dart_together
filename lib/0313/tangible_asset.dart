import 'Asset.dart';

abstract class TangibleAsset extends Asset {

  final double weight;
  final String color;

  TangibleAsset(this.weight, this.color);

}