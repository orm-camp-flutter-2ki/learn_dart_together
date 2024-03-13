import 'package:learn_dart_together/240313/practice_2/intangible_asset.dart';

// 특허권
class Patent extends IntangibleAsset {
  int number; // 특허 번호

  Patent(
    super.weight, {
    required super.price,
    required super.name,
    required super.ownerName,
    required this.number,
  });

  @override
  void value() {
    // 가치 계산
  }
}
