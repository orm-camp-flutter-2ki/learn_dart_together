import 'package:learn_dart_together/0313/asset.dart';
import 'package:learn_dart_together/0313/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  // 무게는 0 이하가 될 수 없다고 생각.. -> 0으로 초기화
  // 그냥 값을 입력받고 비워두는게 나을지 고민이 된다.
  double _weight = 0;
  String color;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
  });

  // getter
  @override
  double get weight => _weight;

  //setter
  @override
  set weight(double weightValue) {
    _weight = weightValue;
  }

  @override
  void assetInfo() {
    print('[$name] 색상:$color 가격:$price원');
  }

  // 구매 메소드
  void buy(bool buyThis) {
    if (buyThis) {
      print('$name을 구매했습니다.');
      return;
    }
    print('돈이 없어 구매를 하지 못했다....');
  }
}
