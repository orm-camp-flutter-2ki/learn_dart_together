import 'package:learn_dart_together/24_03_13/thing.dart';

abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}
