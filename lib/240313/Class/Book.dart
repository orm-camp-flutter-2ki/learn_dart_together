import 'package:learn_dart_together/240313/Abstract/TangibleAsset.dart';

class Book extends TangibleAsset {
  String publisher;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  Book({
    required super.name,
    required super.pirce,
    required super.color,
    required super.makerName,
    required super.owner,
    required super.productionYear,
    required this.publisher,
    required double weight
  }) : _weight = weight;
}