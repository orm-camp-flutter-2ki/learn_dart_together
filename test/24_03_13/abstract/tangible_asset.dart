import 'asset.dart';

abstract class TangibleAsset extends Asset {
  final String _type;
  final int _amount;

  TangibleAsset(
      {required super.isTangible,
      required super.name,
      required super.price,
      required String type,
      required int amount})
      : _type = type,
        _amount = amount;

  String get type => _type;
  int get amount => _amount;
}
