import 'intangible_asset.dart';

class Idea extends IntangibleAsset {
  String patentNum;

  Idea({
    required String name,
    required String patent,
    required this.patentNum,
  }) : super(name: name, patent: patent);
}
