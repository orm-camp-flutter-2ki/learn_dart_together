import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetail {
  @JsonKey(name: 'original_title')
  final String originalTitle;
  final String status;
  final bool adult;
  final int runtime;

  const MovieDetail({
    required this.originalTitle,
    required this.status,
    required this.adult,
    required this.runtime,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) => _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

}