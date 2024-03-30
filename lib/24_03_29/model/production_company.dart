class ProductionCompany {
  num id;
  String logoPath;
  String name;
  String originCountry;

  ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  @override
  String toString() {
    return 'ProductionCompany{id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompany &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name &&
          originCountry == other.originCountry;

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;
}
