import 'dart:math';

import 'package:learn_dart_together/24_03_12/vehicle.dart';

class Airplane extends Vehicle {
  String departPoint;
  String destination;

  Airplane({
    required super.brand,
    required super.model,
    required super.releaseYear,
    required this.departPoint,
    required this.destination
  });

  String getLunchMenu(List<String> meal) {
    var menu = meal[Random().nextInt(meal.length - 1)];

    return menu;
  }
}