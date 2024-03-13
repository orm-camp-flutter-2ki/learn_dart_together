//무형자산 특허권
import 'intangible_asset.dart';

class Patent extends IntangibleAsset {
  String patentNumber;

  Patent({
    required String name,
    required int price,
    required this.patentNumber,
  }) : super(name, price);
  //
  // @override
  // double weight;

}
