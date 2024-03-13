import '06_asset.dart';
import '07_thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  bool isWeighted;
  bool isFixedAsset;
  int useYear;
  int expirationDate;
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  TangibleAsset({
    required this.isFixedAsset,
    required this.useYear,
    required this.expirationDate,
    required this.isWeighted,
    required double weight,
  }) : _weight = weight;

  void depreciated(TangibleAsset tangibleAsset) {
    int remainingToExpire = expirationDate - useYear;
    print('구매한지 $useYear년 지났습니다.');
    print('유통기한이 $remainingToExpire년 남았습니다.');
  }

  // @override
  // double weight;

  void isThing() {
    print('$weight만큼 무게가 나갑니다');
  }
}

void main() {}
