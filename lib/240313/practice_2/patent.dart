import 'package:learn_dart_together/240313/practice_2/intangible_asset.dart';

import '../practice_3/thing.dart';

// 특허권
class Patent extends IntangibleAsset implements Thing {
  String nickName; // 특허 명칭
  int number; // 특허 번호
  DateTime expirationPeriod; // 유효 기간
  double _weight = 0.0;

  Patent(
    super.ownerName,
    this.nickName,
    this.number,
    this.expirationPeriod,
  );

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

}
