import 'tangible_asset.dart';
import 'thing.dart';

class Book extends TangibleAsset implements Thing {
  String isbn;
  double _weight;

  // getter를 사용(불가, 이름이 같아서), 변수 재정의가 아니라
  // 추상클래스에서 _붙인거는 어차피 접근 안됨
  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
    required double weight,
  }) : _weight = weight;

  @override
  set weight(double value) {
    _weight = weight;
  }

  @override
  double get weight => _weight;
}
