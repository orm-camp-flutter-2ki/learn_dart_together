import 'tangible_asset.dart';
import 'thing.dart';

class Computer extends TangibleAsset implements Thing {
  String makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
    required this.makerName,
  });
}
