import 'intangible_asset.dart';

class Patent extends IntangibleAsset {
  String applicationNumber; // 특허출원 번호
  DateTime applicationDate; // 특허출원일

  Patent({
    required super.name,
    required super.proprietor,
    required this.applicationNumber,
    required this.applicationDate,
  });
}
