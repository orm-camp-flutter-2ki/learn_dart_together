import 'asset.dart';

// 무형자산
abstract class IntangibleAsset extends Asset {
  String ownerName;

  IntangibleAsset(this.ownerName);
}