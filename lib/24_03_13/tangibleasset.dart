import 'package:learn_dart_together/24_03_13/thing.dart';
import 'asset.dart';

class TangibleAsset extends Asset implements Thing {
  //tang~는 Asset에 상속되고+thing이라는 인터페이스를 구현하는 것임
  String color;
  double weight;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    required this.weight,
  });

  @override
  set assetWeight(double weight) {     //값 나오게 하는법: book.assetWeight = 2.0;
    weight = weight;
  }

  @override
  double get assetWeight {   // 값 나오게 하는법: book.assetWeight ;
    return weight;
  }
}
