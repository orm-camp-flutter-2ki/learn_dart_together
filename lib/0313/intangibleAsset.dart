import 'package:learn_dart_together/0313/asset.dart';

abstract class IntangibleAsset extends Asset {
  String tradeMark;

  IntangibleAsset({
    required super.name,
    required super.price,
    required this.tradeMark,
  });

  @override
  void assetInfo() {
    print('[$name] 가격:$price원 상표권:$tradeMark');
  }
}
