import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  String patent;

  IntangibleAsset({
    required String name,
    required this.patent,
  }) : super(name: name);
}
