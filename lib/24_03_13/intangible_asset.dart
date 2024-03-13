import 'package:learn_dart_together/24_03_13/asset.dart';

abstract class IntangibleAsset extends Asset {

  IntangibleAsset({
    required super.name,
    required super.price,
  });
}
