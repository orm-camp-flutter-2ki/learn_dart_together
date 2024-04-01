import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';

part 'results.freezed.dart';

part 'results.g.dart';

@freezed
class Results with _$Results {
  const factory Results({
    required List<Photo> photo,
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) =>
      _$ResultsFromJson(json);
}
