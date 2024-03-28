class StoreDto {

  final String? addr;
  final String? code;
  final String? createdAt;
  final double? lat;
  final double? lng;
  final String? name;
  final String? remainStat;
  final String? stockAt;
  final String? type;

  const StoreDto({
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

  Map<String, dynamic> toJson() {
    return {
      'addr': addr,
      'code': code,
      'createdAt': createdAt,
      'lat': lat,
      'lng': lng,
      'name': name,
      'remainStat': remainStat,
      'stockAt': stockAt,
      'type': type,
    };
  }

  factory StoreDto.fromJson(Map<String, dynamic> map) {
    return StoreDto(
      addr: map['addr'],
      code: map['code'],
      createdAt: map['created_at'],
      lat: map['lat'],
      lng: map['lng'],
      name: map['name'],
      remainStat: map['remain_stat'],
      stockAt: map['stock_at'],
      type: map['type'],
    );
  }
}