import '../../abstract/intangible_asset.dart';

class Monitor extends IntangibleAsset {
  final String _brand;
  final String _resolution;
  final bool _isPivot;

  Monitor(
      {required super.name,
      required super.price,
      required super.color,
      required super.quantity,
      required String brand,
      required String resolution,
      required bool isPivot})
      : _brand = brand,
        _resolution = resolution,
        _isPivot = isPivot;

  String get brand => _brand;

  String get resolution => _resolution;

  bool get isPivot => _isPivot;
}
