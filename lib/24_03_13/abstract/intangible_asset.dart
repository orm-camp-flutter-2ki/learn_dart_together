import 'asset.dart';

abstract class TangibleAsset extends Asset {
  //타입의 경우 추후 enum같은 것을 활용한 네임스페이스를 사용할것 아직안배움..
  final String _type;
  final int _amount;

  TangibleAsset(
      {required super.name,
      required super.price,
      required String type,
      required int amount})
      : _type = type,
        _amount = amount,
        super(isTangible: true);

  String get type => _type;

  int get amount => _amount;

  int get totalPrice {
    int total = price * amount;

    return total;
  }
}
