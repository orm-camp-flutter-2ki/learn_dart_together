import 'package:learn_dart_together/240327/model/stores.dart';

class Mask {
  final int count;
  final List<Stores> stores;

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
    List<Stores>? stores,
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
      stores: (map['stores'] as List) //다이나믹임
          .map((stores) => Stores.fromJson(stores)) //리스트에 있는 하나하나를 스토어즈에 맞게 반환
          .toList(),
    ); //어떤 타입인지 모르니 재구성이 필요함
  }

//</editor-fold>
}
