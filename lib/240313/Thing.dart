abstract interface class Ting {
  double _weight = 0.0;

  //getter
  double get weight => _weight;

  //setter
  set weight(double value) {
    if (value < 0.0) {
      throw Exception('무게는 0 이상이여야 합니다.');
    }
    _weight = value;
  }
}
