import '06_asset.dart';

abstract class TangibleAsset extends Asset {
  bool isFixedAsset;
  int useYear;
  int expirationDate = 30;

  TangibleAsset(
      {required this.isFixedAsset,
      required this.useYear,
      required this.expirationDate});

  void depreciated(TangibleAsset tangibleAsset) {
    int remainingToExpire = expirationDate - useYear;
    print('구매한지 $useYear년 지났습니다.');
    print('유통기한이 $remainingToExpire년 남았습니다.');
  }
}
