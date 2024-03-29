class Date {
  final String maximum;
  final String minimum;

  Date({
    String? maximum,
    String? minimum,
  })  : maximum = maximum ??
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        minimum = minimum ??
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';

  @override
  String toString() {
    return 'Date{maximum: $maximum, minimum: $minimum}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Date &&
          runtimeType == other.runtimeType &&
          maximum == other.maximum &&
          minimum == other.minimum;

  @override
  int get hashCode => maximum.hashCode ^ minimum.hashCode;
}
