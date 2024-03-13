import 'Asset/abstract Asset.dart';

class idea extends intangibleAsset {
  String patentNum;

  idea({
    required super.name,
    required super.patent,
    required this.patentNum,
  });
}
