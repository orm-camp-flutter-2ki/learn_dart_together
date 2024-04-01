class PhotoDto {
  num? total;
  num? totalHits;
  List<Hits>? hits;

  PhotoDto({
    this.total,
    this.totalHits,
    this.hits,
  });

  PhotoDto.fromJson(dynamic json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = [];
      json['hits'].forEach((v) {
        hits?.add(Hits.fromJson(v));
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

class Hits {
  Hits({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
  });

  Hits.fromJson(dynamic json) {
    id = json['id'];
    pageURL = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
  }

  num? id;
  String? pageURL;
  String? type;
  String? tags;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pageURL'] = pageURL;
    map['type'] = type;
    map['tags'] = tags;
    return map;
  }
}
