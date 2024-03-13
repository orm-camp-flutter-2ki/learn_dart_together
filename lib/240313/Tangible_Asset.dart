//유형자산 클래스
import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing{
  // String name;
  // int price;
  String color;
  double _weight;

  TangibleAsset(super.name, super.price, this.color, this._weight); //무게 필드 추가



  double get weight => _weight; //무게 반환 getter
  set weight(double value){ //무게 설정 setter
    if (value >= 0) {
      _weight = value;
    } else {
      throw ArgumentError('무게는 음수가 될 수 없습니다.');
    }
  }

}

