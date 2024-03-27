import 'package:collection/collection.dart';

class Mask {
  final int count;
  final List<Store> stores;

  const Mask({
    required this.count,
    required this.stores,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Mask &&
              runtimeType == other.runtimeType &&
              count == other.count &&
              const ListEquality<Store>().equals(stores, other.stores));

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;

  @override
  String toString() {
    return 'Mask{' + ' count: $count,' + ' stores: $stores,' + '}';
  }

  Mask copyWith({
    int? count,
    List<Store>? stores,
  }) {
    return Mask(
      count: count ?? this.count,
      stores: stores ?? this.stores,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'stores': stores.map((store) => store.toJson()).toList(),
    };
  }

  factory Mask.fromJson(Map<String, dynamic> json) {
    return Mask(
      count: json['count'] as int,
      stores: (json['stores'] as List<dynamic>)
          .map((storeJson) => Store.fromJson(storeJson))
          .toList(),
    );
  }
}

class Store {
  final String addr;
  final String code;
  final DateTime created_at;
  final double lat;
  final double lng;
  final String name;
  final String remain_stat;
  final DateTime stock_at;
  final String type;

  const Store({
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Store &&
              runtimeType == other.runtimeType &&
              addr == other.addr &&
              code == other.code &&
              created_at == other.created_at &&
              lat == other.lat &&
              lng == other.lng &&
              name == other.name &&
              remain_stat == other.remain_stat &&
              stock_at == other.stock_at &&
              type == other.type);

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
    return 'Store{' +
        ' addr: $addr,' +
        ' code: $code,' +
        ' created_at: $created_at,' +
        ' lat: $lat,' +
        ' lng: $lng,' +
        ' name: $name,' +
        ' remain_stat: $remain_stat,' +
        ' stock_at: $stock_at,' +
        ' type: $type,' +
        '}';
  }

  Store copyWith({
    String? addr,
    String? code,
    DateTime? created_at,
    double? lat,
    double? lng,
    String? name,
    String? remain_stat,
    DateTime? stock_at,
    String? type,
  }) {
    return Store(
      addr: addr ?? this.addr,
      code: code ?? this.code,
      created_at: created_at ?? this.created_at,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      name: name ?? this.name,
      remain_stat: remain_stat ?? this.remain_stat,
      stock_at: stock_at ?? this.stock_at,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'created_at': created_at.toIso8601String(),
      'lat': lat,
      'lng': lng,
      'name': name,
      'remain_stat': remain_stat,
      'stock_at': stock_at.toIso8601String(),
      'type': type,
    };
  }

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      addr: json['addr'] as String,
      code: json['code'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      lat: json['lat'] as double,
      lng: json['lng'] as double,
      name: json['name'] as String,
      remain_stat: json['remain_stat'] as String,
      stock_at: DateTime.parse(json['stock_at'] as String),
      type: json['type'] as String,
    );
  }
}
