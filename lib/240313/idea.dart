import 'Asset/abstract_asset.dart';

class idea extends intangibleAsset {
  String patentNum;

  idea({
    required super.name,
    required super.patent,
    required this.patentNum,
  });
}
