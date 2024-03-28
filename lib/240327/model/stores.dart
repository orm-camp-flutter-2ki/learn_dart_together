class Stores {
  final String addr;
  final String code;
  final String created_at;
  final String name;
  final String type;

  Stores(this.addr, this.code, this.created_at, this.name, this.type);

  Map<String, dynamic> toJson() => {
        'addr': addr,
        'code': code,
        'created_at': created_at,
        'name': name,
        'type': type,
      };

  Stores.fromJson(Map<String, dynamic> json)
      : addr = json['addr'],
        code = json['code'],
        created_at = json['created_at'] ?? '',
        name = json['name'],
        type = json['type'];

  Stores copyWith(
    String? addr,
    String? code,
    String? created_at,
    String? name,
    String? type,
  ) {
    return Stores(addr ?? this.addr, code ?? this.code,
        created_at ?? this.created_at, name ?? this.name, type ?? this.type);
  }

  @override
  String toString() {
    return 'Stores{addr: $addr, code: $code, created_at: $created_at, name: $name, type: $type}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Stores &&
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
