import 'asset.dart';

abstract class TangibleAsset extends Asset {
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
