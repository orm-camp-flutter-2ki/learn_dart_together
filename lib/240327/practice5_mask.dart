import 'dart:ffi';

class Mask {
  final int count;
  final Stores stores;

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
    Stores? stores,
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

  factory Mask.fromJson(Map<String, dynamic> map) {
    return Mask(
      count: map['count'] as int,
      stores: map['stores'],
    );
  }

//</editor-fold>
}

class Stores {
  final String addr; // "�쒖슱�밸퀎�� 媛뺣턿援� �붾ℓ濡� 38 (誘몄븘��)",
  final int code; // "11817488",
  final String created_at; // "2020/07/03 11:00:00",
  final Double lat; // 37.6254369,
  final Double lng; // 127.0164096,
  final String name; // "�뱀빟援�",
  final String remain_stat; //"plenty",
  final String stock_at; //"2020/07/02 18:05:00",
  final int type;

//<editor-fold desc="Data Methods">

  const Stores({
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

// "0@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stores &&
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
    return 'Stores{' +
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

  Stores copyWith({
    String? addr,
    int? code,
    String? created_at,
    Double? lat,
    Double? lng,
    String? name,
    String? remain_stat,
    String? stock_at,
    int? type,
  }) {
    return Stores(
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

  Map<String, dynamic> toMap() {
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

  factory Stores.fromJson(Map<String, dynamic> map) {
    return Stores(
      addr: map['addr'] as String,
      code: map['code'] as int,
      created_at: map['created_at'] as String,
      lat: map['lat'] as Double,
      lng: map['lng'] as Double,
      name: map['name'] as String,
      remain_stat: map['remain_stat'] as String,
      stock_at: map['stock_at'] as String,
      type: map['type'] as int,
    );
  }
}
