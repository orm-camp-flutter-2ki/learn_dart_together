import 'tangible_asset.dart';

class Book extends TangibleAsset {

  final String isbn;

  Book(super.type, super.name, super.value, super.weight, super.color, this.isbn);
}