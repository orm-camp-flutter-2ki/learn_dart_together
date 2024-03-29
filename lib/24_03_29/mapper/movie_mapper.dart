import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';

extension ToMovie on Results {
  Movie toMovie() {
    return Movie(
      id: id?.toInt() ?? 0,
      title: title ?? '',
      popularity: popularity?.toDouble() ?? 0.0,
      release_date: DateTime.tryParse(releaseDate ?? '') ??
          DateTime(2024, 03, 29),
      vote_average: voteAverage?.toDouble() ?? 0.0,
    );
  }
}