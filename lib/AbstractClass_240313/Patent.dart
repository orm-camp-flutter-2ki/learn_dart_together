import 'package:learn_dart_together/AbstractClass_240313/IntangibleAsset.dart';

class Patent extends IntangibleAsset {
  String date;

  Patent({
    required super.name,
    required super.code,
    required super.category,
    required this.date,
  });
}
