import '../../abstract/tangible_asset.dart';

class Stock extends TangibleAsset {
  final String _item;

  Stock(
      {required super.name,
      required super.price,
      required super.type,
      required super.amount,
      required String item})
      : _item = item;
}
