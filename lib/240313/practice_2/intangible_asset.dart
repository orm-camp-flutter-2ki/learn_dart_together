import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  String patent; // 특허권

  IntangibleAsset(this.patent);
}