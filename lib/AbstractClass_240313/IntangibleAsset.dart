import 'package:learn_dart_together/AbstractClass_240313/AssetAll.dart';

abstract class IntangibleAsset extends AssetAll {
  String category;

  IntangibleAsset({
    required super.name,
    required super.code,
    required this.category,
  });
}
