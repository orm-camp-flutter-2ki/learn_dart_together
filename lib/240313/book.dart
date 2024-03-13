import 'package:learn_dart_together/240313/tangible_asset.dart';

class Book extends TangibleAsset {
  String _isbn;

  Book ({
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
    required String isbn
  }) : _isbn = isbn;

  String get isbn => _isbn;

  @override
  void printInformation() {
    super.printInformation();
    print('isbn : $isbn');
  }
}