import 'intangibleAsset.dart';

class Patent extends IntangibleAsset {
  int patentNumber;

  Patent(
      {required super.name,
      required super.price,
      required super.expirationYn,
      required this.patentNumber});
}
