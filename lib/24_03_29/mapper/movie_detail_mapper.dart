import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/belongs_to_collection_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/genre_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/production_company_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/production_country_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/spoken_language_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/belongs_to_collection.dart';
import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';

extension MovieDetailDtoToMovieDetail on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      adult: adult ?? false,
      backdropPath: backdropPath ?? 'unknown',
      belongsToCollection: belongsToCollection?.toBelongsToCollection() ??
          BelongsToCollection(
              id: 0,
              name: 'unknown',
              posterPath: 'unknown',
              backdropPath: 'unknown'),
      budget: budget ?? 0,
      genres: genres?.map((e) => e.toGenre()).toList() ?? [],
      homepage: homepage ?? 'unknown',
      id: id ?? 0,
      imdbId: imdbId ?? 'unknown',
      originalLanguage: originalLanguage ?? 'unknown',
      originalTitle: originalTitle ?? 'unknown',
      overview: overview ?? 'unknown',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? 'unknown',
      productionCompanies:
          productionCompanies?.map((e) => e.toProductionCompany()).toList() ??
              [],
      productionCountries:
          productionCountries?.map((e) => e.toProductionCountry()).toList() ??
              [],
      releaseDate: releaseDate ?? 'unknown',
      revenue: revenue ?? 0,
      runtime: runtime ?? 0,
      spokenLanguages:
          spokenLanguages?.map((e) => e.toSpokenLanguage()).toList() ?? [],
      status: status ?? 'unknown',
      tagline: tagline ?? 'unknown',
      title: title ?? 'unknown',
      video: video ?? false,
      voteAverage: voteAverage ?? 0,
      voteCount: voteCount ?? 0,
    );
  }
}
