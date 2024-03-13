import 'package:learn_dart_together/240313/intangible_assets.dart';

class Patent extends InTangibleAsset {
  // 관할 부서
  String jurisdictionDepartment;
  // 관할 공무원
  String jurisdictionPerson;

  Patent({required super.name, required super.price, required super.period, required super.field, required this.jurisdictionDepartment, required this.jurisdictionPerson});
}
