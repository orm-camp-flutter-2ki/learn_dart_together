import 'package:learn_dart_together/240313/asset.dart';

abstract class IntangibleAsset extends Asset{
  IntangibleAsset({
    required super.name,
    required super.price,
  });
}