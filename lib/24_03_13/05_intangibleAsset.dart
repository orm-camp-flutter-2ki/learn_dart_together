import '01_asset.dart';

abstract class IntangibleAsset extends Asset {
  int value;

  IntangibleAsset({required super.name, required this.value});
}

// // 에러 -> 추상 클래스가 아닌데 Asset 클래스의 printInfo() 함수를 override 하지 않아서
// class IntangibleAsset extends Asset {
//   int value;
//
//   IntangibleAsset({required super.name, required this.value});
// }
