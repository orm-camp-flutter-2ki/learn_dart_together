import 'package:learn_dart_together/24_03_12/book.dart';
import 'package:learn_dart_together/24_03_13/thing.dart';

import 'asset.dart';

/// 유형 자산
abstract class TangibleAsset extends Asset implements Thing {
  String color;
  @override
  double weight;

  TangibleAsset(
    this.color,
    this.weight, {
    required super.name,
    required super.price,
  });

  // 타당성검사를 하지 않으면 이 코드들은 사실상 의미가 없다.
  // 왜냐면 사실상 weight라는 값을 핸들링 하는 동작이 없고 단순히 쓰고 읽는 동작이 전부라서,
  // 굳이 private으로 할 필요 없이 pubilc으로 하고
  // 인터페이스에 구현된 getter/setter를 오버라이드 하는 대신,
  // 변수에 오버라이드를 붙여주면 된다.
  // @override
  // set weight(double value) {
  //   _weight = value;
  // }
  //
  // @override
  // double get weight => _weight;
}
