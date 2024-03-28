import 'dart:convert';

class Store {
  final String addr;
  final String code;
  final String created_at;
  final double lat;
  final double lng;
  final String name;
  final String adremain_statdr;
  final String stock_at;
  final String type;

  Store({
    required this.addr,
    required this.code,
    required this.created_at,
    required this.lat,
    required this.lng,
    required this.name,
    required this.adremain_statdr,
    required this.stock_at,
    required this.type,
  });
  @override
  String toString() {
    return 'Store(addr: $addr, code: $code, created_at: $created_at, lat: $lat, lng: $lng, name: $name, adremain_statdr: $adremain_statdr, stock_at: $stock_at, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Store &&
        other.addr == addr &&
        other.code == code &&
        other.created_at == created_at &&
        other.lat == lat &&
        other.lng == lng &&
        other.name == name &&
        other.adremain_statdr == adremain_statdr &&
        other.stock_at == stock_at &&
        other.type == type;
  }

  @override
  int get hashCode {
    return addr.hashCode ^ code.hashCode ^ created_at.hashCode ^ lat.hashCode ^ lng.hashCode ^ name.hashCode ^ adremain_statdr.hashCode ^ stock_at.hashCode ^ type.hashCode;
  }
}
