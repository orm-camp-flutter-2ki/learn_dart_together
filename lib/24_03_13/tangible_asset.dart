abstract class TangibleAsset { // abstract 를 붙여서 추상클래스 생성
  String name;
  int price;
  String color;

  TangibleAsset({required this.name, required this.price, required this.color});

  void buy(); // 추상메서드 1

  void sell(); // 추상메서드 2
}

