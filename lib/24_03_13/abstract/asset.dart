abstract class Asset {
  final bool _isTangible;
  final String _name;
  final int _price;

  Asset({required bool isTangible, required String name, required int price})
      : _isTangible = isTangible,
        _name = name,
        _price = price;

  bool get isTangible => _isTangible;

  String get name => _name;

  int get price => _price;
}
