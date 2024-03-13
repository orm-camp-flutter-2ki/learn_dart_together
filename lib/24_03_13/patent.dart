import 'package:learn_dart_together/24_03_13/intangible_asset.dart';

class Patent extends IntangibleAsset {
  String patentHolder;

  Patent({
    required super.name,
    required super.price,
    required this.patentHolder,
  });
}
