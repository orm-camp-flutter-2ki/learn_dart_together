import '../interface/thing.dart';
import 'asset.dart';

abstract class IntangibleAsset extends Asset implements Thing {
  final String _color;
  final int _quantity;
  double _weight;

  IntangibleAsset(
      {required super.name,
      required super.price,
      required String color,
      required int quantity,
      required double weight})
      : _color = color,
        _quantity = quantity,
        _weight = weight,
        super(isTangible: false);

  String get color => _color;

  int get quantity => _quantity;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) => _weight = weight;
}
