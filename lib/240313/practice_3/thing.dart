abstract class Thing {
  double _weight;

  Thing(this._weight);

  double get weight => _weight;
  set weight(double value) => _weight = value;
}