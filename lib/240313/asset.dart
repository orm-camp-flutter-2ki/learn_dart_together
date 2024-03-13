abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price
  });

  void printInformation() {
    print('이름 : $name');
    print('가격 : $price');
  }
}