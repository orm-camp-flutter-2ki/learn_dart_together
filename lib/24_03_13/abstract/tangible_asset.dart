import '../interface/thing.dart';
import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  final String _color;
  final int _quantity;
  final String _department;
  double _weight;

  TangibleAsset(
      {super.isTangible = true,
      required super.name,
      required super.price,
      required String color,
      required int quantity,
      required String department,
      required double weight})
      : _color = color,
        _quantity = quantity,
        _department = department,
        _weight = weight;

  String get color => _color;

  int get quantity => _quantity;

  String get department => _department;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) => _weight = weight;
}
