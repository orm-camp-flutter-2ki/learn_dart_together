import 'package:learn_dart_together/240313/tangible_asset.dart';

class Computer extends TangibleAsset {
  String _makerName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
    required String makerName
  }) : _makerName = makerName;

  String get makerName => _makerName;

  @override
  void printInformation() {
    super.printInformation();
    print('메이커 이름 : $makerName');
  }
}