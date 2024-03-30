class Trader {
  final String name;
  final String city;

  const Trader({
    required this.name,
    required this.city,
  });

  @override
  String toString() {
    return 'Trader{name: $name, city: $city}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Trader &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          city == other.city;

  @override
  int get hashCode => name.hashCode ^ city.hashCode;
}