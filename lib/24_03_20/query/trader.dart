class Trader {
  String name;
  String city;

  Trader(this.name, this.city);


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Trader &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          city == other.city;

  @override
  int get hashCode => name.hashCode ^ city.hashCode;


  @override
  String toString() {
    return 'Trader{name: $name, city: $city}';
  }

  Trader copyWith(String? name, String? city) {
    return Trader(name ?? this.name, city ?? this.city);
  }

  Trader.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        city = json['city'];

  Map<String, dynamic> toJson() => {
    'name' : name,
    'city' : city
  };
}
