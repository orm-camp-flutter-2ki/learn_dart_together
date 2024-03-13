import 'package:learn_dart_together/24_03_13/intangible_asset.dart';

class License extends IntangibleAsset{
  String contract; // 라이센스는 계약을 기반으로 성립된다?

  License({
    required super.name,
    required super.ownership,
    required super.value,
    required super.patent,
    required this.contract,
  });
}