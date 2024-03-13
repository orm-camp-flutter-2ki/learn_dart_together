abstract class Asset {
  String name;

  Asset(this.name);
}

// Thing 인터페이스 정의
abstract class Thing {
  double get weight; // 무게를 얻는 getter
  set weight(double value); // 무게를 설정하는 setter
}

abstract class TangibleAsset extends Asset implements Thing {
  int price;
  String color;
  double _weight; // 무게를 나타내는 private 변수 (보여줄 필요 없을 때는 숨김)

  TangibleAsset(super.name, this.price, this.color, this._weight);

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    if (value < 0) {
      throw ArgumentError('무게는 음수일 수 없습니다.'); // 음수 무게 예외 처리
    }
    _weight = value;
  }

  void touchAble() {
    print('$name은 만져집니다.');
  }
}

abstract class IntangibleAsset extends Asset {
  double value;

  IntangibleAsset(super.name, this.value);

  void untouchAble() {
    print('$name은 만질 수 없습니다.');
  }
}

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.isbn,
  }) : super(name, price, color, weight);
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required double weight,
    required this.makerName,
  }) : super(name, price, color, weight);
}

class Bitcoin extends IntangibleAsset {
  Bitcoin(super.name, super.value);
}