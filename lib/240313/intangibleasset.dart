import 'asset.dart';

abstract class intangibleAsset extends Asset {
  String patent;

  intangibleAsset({
    required super.name,
    required this.patent,
  });
}