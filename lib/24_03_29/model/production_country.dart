class ProductionCountry {
  String iso31661;
  String name;

  ProductionCountry({
    required this.iso31661,
    required this.name,
  });

  @override
  String toString() {
    return 'ProductionCountry{iso31661: $iso31661, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountry &&
          runtimeType == other.runtimeType &&
          iso31661 == other.iso31661 &&
          name == other.name;

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;
}
