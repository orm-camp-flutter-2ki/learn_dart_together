import 'package:equatable/equatable.dart';
import 'package:learn_dart_together/240401/model/photo/hit.dart';

class PhotoDto extends Equatable {
  int? total;
  int? totalHits;
  List<Hit>? hits;

  PhotoDto({this.total, this.totalHits, this.hits});

  factory PhotoDto.fromJson(Map<String, dynamic> json) => PhotoDto(
        total: json['total'] as int?,
        totalHits: json['totalHits'] as int?,
        hits: (json['hits'] as List<dynamic>?)?.map((e) => Hit.fromJson(e as Map<String, dynamic>)).toList(),
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'totalHits': totalHits,
        'hits': hits?.map((e) => e.toJson()).toList(),
      };

  PhotoDto copyWith({
    int? total,
    int? totalHits,
    List<Hit>? hits,
  }) {
    return PhotoDto(
      total: total ?? this.total,
      totalHits: totalHits ?? this.totalHits,
      hits: hits ?? this.hits,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [total, totalHits, hits];
}
