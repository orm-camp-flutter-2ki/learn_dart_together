class Store {
  final String addr; // "�쒖슱�밸퀎�� 媛뺣턿援� �붾ℓ濡� 38 (誘몄븘��)",
  final String code; // "11817488",
  final String createdAt; // "2020/07/03 11:00:00",
  final num lat; // 37.6254369,
  final num lng; // 127.0164096,
  final String name; // "�뱀빟援�",
  final String remainStat; //"plenty",
  final String stockAt; //"2020/07/02 18:05:00",
  final String type;

//<editor-fold desc="Data Methods">

  const Store({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });

// "0@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Store &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          createdAt == other.createdAt &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          remainStat == other.remainStat &&
          stockAt == other.stockAt &&
          type == other.type);

  @override
  int get hashCode =>
      addr.hashCode ^
      code.hashCode ^
      createdAt.hashCode ^
      lat.hashCode ^
      lng.hashCode ^
      name.hashCode ^
      remainStat.hashCode ^
      stockAt.hashCode ^
      type.hashCode;

  @override
  String toString() {
    return 'Stores{ addr: $addr, code: $code, createdAt: $createdAt, lat: $lat, lng: $lng, name: $name, remain_stat: $remainStat, stock_at: $stockAt, type: $type,}';
  }

  Store copyWith({
    String? addr,
    String? code,
    String? createdAt,
    num? lat,
    num? lng,
    String? name,
    String? remainStat,
    String? stockAt,
    String? type,
  }) {
    return Store(
      addr: addr ?? this.addr,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      remainStat: remainStat ?? this.remainStat,
      stockAt: stockAt ?? this.stockAt,
      type: type ?? this.type,
    );
  }
}
