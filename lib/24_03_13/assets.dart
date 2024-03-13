abstract class Assets {
  String _name;
  int _price;

  String get name => _name;

  set name(String value) => _name = value;

  int get price => _price;

  set price(int value) => _price = value;

  Assets({required name, required price})
      : _name = name,
        _price = price;
}

abstract class TangibleAsset extends Assets implements Thing {
  String _color;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) => _weight = value;

  String get color => _color;

  set color(String value) => _color = value;

  void depreciate(int year);

  TangibleAsset(
      {required color,
      required super.name,
      required super.price,
      required weight})
      : _color = color,
        _weight = weight;
}

abstract class IntangibleAsset extends Assets implements IntangibleType {
  String _type;
  String _certificate;

  String get type => _type;

  set type(String value) => _type = value;

  @override
  String get certificate => _certificate;

  @override
  set certificate(String value) => _certificate = value;

  IntangibleAsset({required color, required super.name, required super.price, required certificate})
      : _type = color,
        _certificate = certificate;
}

abstract interface class IntangibleType {
  String get certificate;

  set certificate(String value);
}

abstract interface class Thing {
  double get weight;

  set weight(double value);

  void aged(int year);
}

class Book extends TangibleAsset {
  String _isbn;

  String get isbn => _isbn;

  set isbn(String value) => _isbn = value;

  @override
  void depreciate(int year) {
    _price -= _price ~/ year;
  }

  @override
  void aged(int year) {
    _weight -= (_weight * 2) ~/ 10;
  }

  Book(
      {required isbn,
      required super.weight,
      required super.color,
      required super.name,
      required super.price})
      : _isbn = isbn;
}

class Computer extends TangibleAsset {
  String _makerName;

  String get makerName => _makerName;

  set makerName(String value) => _makerName = value;

  @override
  void depreciate(int year) {
    _price -= (_price * 2) ~/ year;
  }

  @override
  void aged(int year) {
    _weight -= _weight ~/ 10;
  }

  Computer(
      {required makerName,
      required super.weight,
      required super.color,
      required super.name,
      required super.price})
      : _makerName = makerName;
}

class Technology extends IntangibleAsset {
  String _techLevel;

  String get techLevel => _techLevel;

  set techLevel(String value) => _techLevel = value;

  Technology(
      {required techLevel,
      required super.certificate,
      required super.color,
      required super.name,
      required super.price})
      : _techLevel = techLevel;
}
