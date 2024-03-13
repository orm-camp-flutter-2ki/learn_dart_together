abstract class Asset {
  String _name;
  int _price;

  Asset({
    required String name,
    required int price
  }) : _name = name, _price = price;

  String get name => _name;
  int get price => _price;

  void printInformation() {
    print('이름 : $name');
    print('가격 : $price');
  }
}