// dto 에 있는거 싹다

class Store {
  final String addr;
  final String code;
  final String createdAt;
  final num lat;
  final num lng;
  final String name;
  final String remainStat;
  final String stockAt;
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

  @override
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
    return 'Store{' +
        ' addr: $addr,' +
        ' code: $code,' +
        ' createdAt: $createdAt,' +
        ' lat: $lat,' +
        ' lng: $lng,' +
        ' name: $name,' +
        ' remainStat: $remainStat,' +
        ' stockAt: $stockAt,' +
        ' type: $type,' +
        '}';
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

  Map<String, dynamic> toJson() {
    return {
      'addr': this.addr,
      'code': this.code,
      'createdAt': this.createdAt,
      'lat': this.lat,
      'lng': this.lng,
      'name': this.name,
      'remainStat': this.remainStat,
      'stockAt': this.stockAt,
      'type': this.type,
    };
  }

  factory Store.fromJson(Map<String, dynamic> map) {
    return Store(
      addr: map['addr'] as String,
      code: map['code'] as String,
      createdAt: map['createdAt'] as String,
      lat: map['lat'] as num,
      lng: map['lng'] as num,
      name: map['name'] as String,
      remainStat: map['remainStat'] as String,
      stockAt: map['stockAt'] as String,
      type: map['type'] as String,
    );
  }

//</editor-fold>
}
