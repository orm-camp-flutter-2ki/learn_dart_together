import 'hits_dto.dart';

class ImageDto {
  int? total;
  int? totalHits;
  List<HitsDto>? hits;

  ImageDto({
    this.total,
    this.totalHits,
    this.hits,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['totalHits'] = totalHits;
    if (hits != null) map['hits'] = hits?.map((e) => e.toJson()).toList();
    return map;
  }

  ImageDto.fromJson(Map<String, dynamic> map) {
    total = map['total'];
    totalHits = map['totalHits'];
    if (map['hits'] != null) {
      hits = [];
      map['hits'].forEach((e) {
        hits?.add(HitsDto.fromJson(e));
      });
    }
  }
}
