class Store {
  final String addr;
  final String code;
  final String created_at;
  final String name;
  final String type;

  Store({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toJson() => {
        'addr': addr,
        'code': code,
        'created_at': created_at,
        'name': name,
        'type': type,
      };

  Store.fromJson(Map<String, dynamic> json)
      : addr = json['addr'],
        code = json['code'],
        created_at = json['created_at'] ?? '',
        name = json['name'],
        type = json['type'];

  Store copyWith({
    required String addr,
    required String code,
    required String created_at,
    required String name,
    required String type,
  }) {
    return Store(
      addr: addr,
      code: code,
      created_at: created_at,
      name: name,
      type: type,
    );
  }

  @override
  String toString() {
    return 'Stores{addr: $addr, code: $code, created_at: $created_at, name: $name, type: $type}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          created_at == other.created_at &&
          name == other.name &&
          type == other.type;

  @override
  int get hashCode =>
      addr.hashCode ^
      code.hashCode ^
      created_at.hashCode ^
      name.hashCode ^
      type.hashCode;
}
