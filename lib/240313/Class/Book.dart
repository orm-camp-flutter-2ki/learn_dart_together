import 'package:learn_dart_together/240313/Abstract/TangibleAsset.dart';

class Book extends TangibleAsset {
  String publisher;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required super.makerName,
    required super.owner,
    required super.productionYear,
    required super.weight,
    required this.publisher
  });
}