import 'package:learn_dart_together/240313/intangible_asset.dart';

class Patent extends IntangibleAsset {
  String _creator;

  Patent({
    required super.name,
    required super.price,
    required String creator
  }) : _creator = creator;
}