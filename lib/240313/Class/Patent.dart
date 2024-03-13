
import 'package:learn_dart_together/240313/Abstract/intangibleAsset.dart';

class Patent extends IntangibleAsset {
  String inventor;
  String type;

  Patent({
    required super.owner,
    required super.productionYear,
    required super.name,
    required super.makerName,
    required this.inventor,
    required this.type
  });
}
