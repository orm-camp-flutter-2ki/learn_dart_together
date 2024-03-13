import 'asset.dart';

abstract class IntangibleAsset extends Asset {
  String type;

  IntangibleAsset(super.name, super.price, this.type);
}

class CopyRight extends IntangibleAsset {
  String characteristic;

  CopyRight(super.name, super.price, super.type, this.characteristic);

  @override
  String toString() {
    return '예시: $name, 가치: $price, 종류:$type, 특징: $characteristic';
  }
}

class Trademark extends IntangibleAsset {
  Trademark(super.name, super.price, super.type);

  @override
  String toString() {
    return '예시: $name, 가치: $price  명칭:$type, ';
  }
}

void main() {
  CopyRight copyRight =
      CopyRight('디즈니 캐릭터', 10000000, '저작권', '책 영화 음악 전반적 문화 사업에 관한 것');

  Trademark trademark = Trademark('그립톡', 10000000000, '특허');

  print(copyRight);
  print(trademark);
}
