import 'package:learn_dart_together/24_03_13/assets.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class InTangibleAsset extends Assets{
  // 유형 자산
  int number;
  String description;

  InTangibleAsset(
    super.name,
    this.number,
    this.description
  );

  void descriptionInfo();
}
