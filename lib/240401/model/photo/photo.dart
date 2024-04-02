import 'package:equatable/equatable.dart';

import 'hit.dart';

class Photo extends Equatable {
  final int? total;
  final int? totalHits;
  final List<Hit>? hits;

  const Photo({this.total, this.totalHits, this.hits});

  Photo copyWith({
    int? total,
    int? totalHits,
    List<Hit>? hits,
  }) {
    return Photo(
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
