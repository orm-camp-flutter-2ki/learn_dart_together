import 'package:collection/collection.dart';

class Mask {
  final int count;
  List<Store> stores;

  Mask(this.count, this.stores);

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        stores =
            (json['stores'] as List).map((e) => Store.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {
        'count': count,
        'stores': stores,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores.equals(other.stores);

  @override
  int get hashCode =>
      count.hashCode ^
      stores.map((e) => e.hashCode).reduce((value, element) => value ^ element);

  @override
  String toString() {
    return 'Mask{count: $count, store: $stores}';
  }

  Mask copyWith({
    int? count,
    List<Store>? store,
  }) {
    return Mask(
      count ?? this.count,
      store ?? this.stores,
    );
  }
}

class Store {
  final String addr;
  final String code;
  final String created_at;
  final num lat;
  final num lng;
  final String name;
  final String remain_stat;
  final String stock_at;
  final String type;

  const Store(this.addr, this.code, this.created_at, this.lat, this.lng,
      this.name, this.remain_stat, this.stock_at, this.type);

  Store.fromJson(Map<String, dynamic> json)
      : addr = json['addr'],
        code = json['code'],
        created_at = json['created_at'] ?? '',
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        remain_stat = json['remain_stat'] ?? '',
        stock_at = json['stock_at'] ?? '',
        type = json['type'];

  Map<String, dynamic> toJson() => {
        'addr': addr,
        'code': code,
        'created_at': created_at,
        'lat': lat,
        'lng': lng,
        'name': name,
        'remain_stat': remain_stat,
        'stock_at': stock_at,
        'type': type,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Store &&
          runtimeType == other.runtimeType &&
          addr == other.addr &&
          code == other.code &&
          created_at == other.created_at &&
          lat == other.lat &&
          lng == other.lng &&
          name == other.name &&
          remain_stat == other.remain_stat &&
          stock_at == other.stock_at &&
          type == other.type;

  @override
  int get hashCode =>
      addr.hashCode ^
      code.hashCode ^
      created_at.hashCode ^
      lat.hashCode ^
      lng.hashCode ^
      name.hashCode ^
      remain_stat.hashCode ^
      stock_at.hashCode ^
      type.hashCode;

  @override
  String toString() {
    return 'Store{addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }

  Store copyWith({
    String? addr,
    String? code,
    String? created_at,
    num? lat,
    num? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    String? type,
  }) {
    return Store(
      addr ?? this.addr,
      code ?? this.code,
      created_at ?? this.created_at,
      lat ?? this.lat,
      lng ?? this.lng,
      name ?? this.name,
      remain_stat ?? this.remain_stat,
      stock_at ?? this.stock_at,
      type ?? this.type,
    );
  }
}
