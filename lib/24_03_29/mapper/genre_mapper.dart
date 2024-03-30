import 'package:learn_dart_together/24_03_29/dto/genre_dto.dart';
import 'package:learn_dart_together/24_03_29/model/genre.dart';

extension GenreDtoToGenre on GenreDto {
  Genre toGenre() {
    return Genre(
      id: id ?? 0,
      name: name ?? 'unknown',
    );
  }
}
