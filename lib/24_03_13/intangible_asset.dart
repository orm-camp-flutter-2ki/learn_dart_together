import 'package:learn_dart_together/24_03_13/asset.dart';

abstract class IntangibleAsset extends Asset {
  String patent;

  IntangibleAsset({
    required super.name,
    required super.ownership,
    required super.value,
    required this.patent
  });
}