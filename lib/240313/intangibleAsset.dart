import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  bool expirationYn;

  IntangibleAsset(
      {required super.name, required super.price, required this.expirationYn});
}
