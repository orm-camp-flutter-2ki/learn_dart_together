abstract class Asset {
  String _name;
  int _price;

  Asset(this._name, this._price);

  String generateDescription();

  int get valuationPrice => _price;

  String get name => _name;
}
