import 'package:learn_dart_together/240401_homework/dto/photoDto.dart';

class ImageDto {
  int? total;
  int? totalHits;
  List<PhotoDto>? hits;

  ImageDto({
    this.total,
    this.totalHits,
    this.hits,
  });

  ImageDto.fromJson(dynamic json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = [];
      json['hits'].forEach((v) {
        hits?.add(PhotoDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['totalHits'] = totalHits;
    if (hits != null) {
      map['hits'] = hits?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
