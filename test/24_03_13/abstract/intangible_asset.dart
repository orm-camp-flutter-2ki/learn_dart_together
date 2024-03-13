import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  final String _color;
  final int _quantity;

  IntangibleAsset(
      {required super.name,
      required super.price,
      required String color,
      required int quantity})
      : _color = color,
        _quantity = quantity,
        super(isTangible: false);

  String get color => _color;

  int get quantity => _quantity;
}
