import 'dart:convert';

import 'package:collection/collection.dart';

class Mask {
  final int count;
  final List<Store> stores;

//<editor-fold desc="Data Methods">
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
          stores == other.stores);

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
      'count': this.count,
      'stores': this.stores,
    };
  }

  // 초안
  // factory Mask.fromJson(Map<String, dynamic> json) {
  //   return Mask(
  //     count: json['count'] as int,
  //     stores: json['stores'] as List<Store>,
  //   );
  // }

  // 수정
  factory Mask.fromJson(Map<String, dynamic> json) {
    List<Store> stores = <Store>[];
    if (json['stores'] != null) {
      var storeList = json['stores'] as List<dynamic>;
      stores = storeList.map((storeJson) => Store.fromJson(storeJson as Map<String, dynamic>)).toList();
    }
    return Mask(
      count: json['count'] as int,
      stores: stores,
    );
  }
//</editor-fold>
}

class Store {
  final String addr;
  final String code;
  final String created_at;
  final double lat;
  final double lng;
  final String name;
  final String remain_stat;
  final String stock_at;
  final String type;

//<editor-fold desc="Data Methods">


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
              type == other.type
          );


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
    String? created_at,
    double? lat,
    double? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
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
      'addr': this.addr,
      'code': this.code,
      'created_at': this.created_at,
      'lat': this.lat,
      'lng': this.lng,
      'name': this.name,
      'remain_stat': this.remain_stat,
      'stock_at': this.stock_at,
      'type': this.type,
    };
  }

  // 초안
  // factory Store.fromJson(Map<String, dynamic> json) {
  //   return Store(
  //     addr: json['addr'] as String,
  //     code: json['code'] as String,
  //     created_at: json['created_at'] as String,
  //     lat: json['lat'] as double,
  //     lng: json['lng'] as double,
  //     name: json['name'] as String,
  //     remain_stat: json['remain_stat'] as String,
  //     stock_at: json['stock_at'] as String,
  //     type: json['type'] as String,
  //   );

  // 수정
  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      addr: json['addr'] is String ? utf8.decode(json['addr'].toString().codeUnits) : '', // 인코딩 처리
      code: json['code'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      // name: json['name'] as String? ?? '',
      name: json['name'] is String ? utf8.decode(json['name'].toString().codeUnits) : '', // 인코딩 처리
      remain_stat: json['remain_stat'] as String? ?? '',
      stock_at: json['stock_at'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );
  }
//</editor-fold>
}
