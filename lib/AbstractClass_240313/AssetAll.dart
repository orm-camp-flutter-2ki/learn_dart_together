import 'package:learn_dart_together/AbstractClass_240313/Thing.dart';

abstract class AssetAll {
  String name;
  String code; // 모든 것에 코드 넘버 부여.

  AssetAll({
    required this.name,
    required this.code,
  });
}
