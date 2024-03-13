import 'asset.dart';

/// 무형자산 ex) 특허권, 저작권
class IntangibleAsset extends Asset {
  int awareness;
  int customerLoyalty;
  int reliability;

  IntangibleAsset(
    this.awareness,
    this.customerLoyalty,
    this.reliability, {
    // 슈퍼 생성자는 부모 클래스 필드와 똑같은 방식으로 선언해야한다.
    required super.name,
    required super.price,
  });
}

class BrandValue extends IntangibleAsset {
  BrandValue(
    super.awareness,
    super.customerLoyalty,
    super.reliability, {
    required super.name,
    required super.price,
  });
}
