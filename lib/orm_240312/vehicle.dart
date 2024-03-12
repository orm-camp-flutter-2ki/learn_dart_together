class Vehicle {
  final String maker;
  final String model;
  final int year;

  Vehicle(this.maker, this.model, this.year);

  @override
  String toString() => 'Vehicle($maker, $model, $year)';
}
