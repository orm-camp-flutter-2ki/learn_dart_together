import '../../abstract/intangible_asset.dart';

class Computer extends IntangibleAsset {
  final bool _isLaptop;
  final String _OS;

  Computer(
      {required super.name,
      required super.price,
      required super.color,
      required super.quantity,
      required super.weight,
      required bool isLaptop,
      required String OS})
      : _isLaptop = isLaptop,
        _OS = OS;

  bool get isLaptop => _isLaptop;

  String get OS => _OS;
}
