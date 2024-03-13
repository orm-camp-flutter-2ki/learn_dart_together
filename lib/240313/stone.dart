import 'thing.dart';

class Stone implements Thing {
  final double _weight;

  Stone({required double weight}) : _weight = weight;

  @override
  set weight(double value) {}

  @override
  double get weight => _weight;
}
