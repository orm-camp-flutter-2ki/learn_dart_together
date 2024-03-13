import 'package:learn_dart_together/240313/Abstract/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String os;

  Computer({
    required super.name,
    required super.pirce,
    required super.color,
    required super.makerName,
    required this.os
  });
}

class Book extends TangibleAsset {
  String publisher;

  Book({
    required super.name,
    required super.pirce,
    required super.color,
    required super.makerName,
    required this.publisher
  });
}