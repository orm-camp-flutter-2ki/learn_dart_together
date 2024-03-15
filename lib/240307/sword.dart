class Sword {
  String name;
  int damage;

  Sword({
    required this.name,
    required this.damage,
  });

  @override
  String toString() {
    return '$name($damage damage)';
  }

  @override
  bool operator ==(Object other) {
    return other is Sword && name == other.name && damage == other.damage;
  }

  @override
  int get hashCode => name.hashCode ^ damage.hashCode;

}
