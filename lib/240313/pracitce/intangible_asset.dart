import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  String proprietor; // 소유주

  IntangibleAsset({
    required super.name,
    required this.proprietor,
  });
}
