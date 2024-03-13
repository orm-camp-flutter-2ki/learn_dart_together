import 'package:learn_dart_together/24_03_13/tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({required super.name,
    required super.color,
    required super.ownership,
    required super.price,
    required super.value,
    required super.weight,
    required this.isbn,
  });

  @override
  void buy() {
    print('📖 도서 정가제가 적용된 채로 구매하기. 📖');
  }

  @override
  void sell() {
    print('📖 중고서점을 통해서 판매하기 📖');
  }
}