class Date {
  final String maximum;
  final String minimum;

  Date({
    required this.maximum,
    required this.minimum,
  });

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
