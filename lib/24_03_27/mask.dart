import 'package:collection/collection.dart';

class Mask {
  final num count;
  final List<Store> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  Mask.copyWith({
    required Mask origin,
    num? count,
    List<Store>? stores,
  })  : count = count ?? origin.count,
        stores = stores ?? origin.stores;

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        stores = (json['stores'] as List).map((e) => Store.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {'count': count, 'stores': stores.map((e) => e.toJson()).toList()};

  @override
  String toString() {
    return 'Mask{count: $count, stores: $stores}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          compareStores(stores, other.stores);

  bool compareStores(List<Store> origin, List<Store> other) {
    for (int i = 0; i < origin.length; i++) {
      if (origin[i] != other[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}

class Store {
  final String addr;
  final String code;
  final String? created_at;
  final num lat;
  final num lng;
  final String name;
  final String? remain_stat;
  final String? stock_at;
  final String type;

  Store({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remain_stat,
    required this.stock_at,
    required this.type,
  });

  Store.copyWith({
    required Store origin,
    String? addr,
    String? code,
    String? created_at,
    num? lat,
    num? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    String? type,
  })  : addr = addr ?? origin.addr,
        code = code ?? origin.code,
        created_at = created_at ?? origin.created_at,
        lat = lat ?? origin.lat,
        lng = lng ?? origin.lng,
        name = name ?? origin.name,
        remain_stat = remain_stat ?? origin.remain_stat,
        stock_at = stock_at ?? origin.stock_at,
        type = type ?? origin.type;

  Store.fromJson(Map<String, dynamic> json)
      : addr = json['addr'],
        code = json['code'],
        created_at = json['created_at'],
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        remain_stat = json['remain_stat'],
        stock_at = json['stock_at'],
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
        'type': type
      };

  @override
  String toString() {
    return 'Store{addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, remain_stat: $remain_stat, stock_at: $stock_at, type: $type}';
  }

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
}
