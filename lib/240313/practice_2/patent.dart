import 'package:learn_dart_together/240313/practice_2/intangible_asset.dart';

import '../practice_3/thing.dart';

// 특허권
class Patent extends IntangibleAsset {
  String nickName; // 특허 명칭
  int number; // 특허 번호
  DateTime expirationPeriod; // 유효 기간

  Patent(
    super.ownerName,
    this.nickName,
    this.number,
    this.expirationPeriod,
  );
}
