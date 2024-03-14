//유형자산 클래스
import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  // String name;
  // int price;
  String color;

  @override
  double weight;


  TangibleAsset(
    super.name,
    super.price, {
    required this.color,
    required this.weight,
  }); //무게 필드 추가
}
//
// double get weight {
//   return _weight;
// } //무게 반환 getter
//
// set weight(double value) {
//   //무게 설정 setter
//   if (value >= 0) {
//     _weight = value;
//   } else {
//     throw ArgumentError('무게는 음수가 될 수 없습니다.');
//   }
// }}
