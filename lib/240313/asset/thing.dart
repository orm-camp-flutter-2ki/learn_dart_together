import 'package:learn_dart_together/240313/asset/book.dart';
import 'package:learn_dart_together/240313/asset/tangible_asset.dart';

abstract interface class Thing {
  double get weight;

  set weight(double value);
}

void main() {
  Thing book = Book(name: 'name', price: 100, color: '', isbn: 'isbn', weight: 100.3);

  TangibleAsset tangibleAsset = Book(name: 'name', price: 100, color: '', isbn: 'isbn', weight: 100.3);
}