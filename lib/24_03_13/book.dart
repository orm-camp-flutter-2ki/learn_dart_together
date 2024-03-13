import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  final String _isbn;

  Book({required String name, required int price, required String color, required double weight, required String isbn})
      : _isbn = isbn, super(name, price, color, weight);

  @override
  String generateDescription() {
    return '이번에 소개할 책은 $name입니다. 가격은 ${super.valuationPrice}원이며, 색상은 '
        '${super.color}입니다. 무게는 ${super.weight}이며, ISBN은 $_isbn입니다.';
  }
}
