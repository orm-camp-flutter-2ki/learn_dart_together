import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(super.name, super.price, super.color, super.weight, this.isbn);

  @override
  String generateDescription() {
    return '이번에 소개할 책은 $name입니다. 가격은 ${super.valuationPrice}원이며, 색상은 ${super.color}입니다. 무게는 ${super.weight}이며, ISBN은 $isbn입니다.';
  }
}
