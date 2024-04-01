import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetail {
  final String title;

  @JsonKey(name: 'runtime')
  final int runTime;

  @JsonKey(name: 'poster_path')
  final String posterUrl;

  const MovieDetail({
    required this.title,
    required this.runTime,
    required this.posterUrl,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetail &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          runTime == other.runTime &&
          posterUrl == other.posterUrl;

  @override
  int get hashCode => title.hashCode ^ runTime.hashCode ^ posterUrl.hashCode;

// 4종 세트
}
