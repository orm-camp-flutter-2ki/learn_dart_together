import 'package:learn_dart_together/240313/Abstract/TangibleAsset.dart';

class Computer extends TangibleAsset {
  String os;

  Computer({
    required super.name,
    required super.pirce,
    required super.color,
    required super.makerName,
    required this.os,
    required super.owner,
    required super.productionYear
  });
}

class Book extends TangibleAsset {
  String publisher;

  Book({
    required super.name,
    required super.pirce,
    required super.color,
    required super.makerName,
    required this.publisher, 
    required super.owner,
    required super.productionYear
  });
}