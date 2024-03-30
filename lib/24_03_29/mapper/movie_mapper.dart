import '../dto/movie_dto.dart';
import '../model/movie.dart';

extension MovieDtoExtension on MovieDto {
  List<MovieInfo> toMovies() {
    return results
        .map<MovieInfo>(
            (json) => MovieInfo.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
