import 'dart:convert';

import 'stores.dart';

class Mask {
  int count;
  List<Stores> stores;

  Mask(this.count, this.stores);

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        stores = (json['stores'] as List).map((e) => Stores.fromJson(e)).toList();            //List<Stores>로 변환 현재 List<dynamic>



  Map<String, dynamic> toJson() => {'count': count, 'stores': stores};

  @override
  String toString() {
    return 'Stores{count: $count, stores: $stores}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mask &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          stores == other.stores;

  @override
  int get hashCode => count.hashCode ^ stores.hashCode;
}
