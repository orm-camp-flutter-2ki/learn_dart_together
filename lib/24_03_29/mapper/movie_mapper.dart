import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

const defaultNum = 0;
const defaultString = '';
const defaultBool = false;


extension MovieInfoMapper on ResultsDto {
  MovieInfo toMovieInfo() =>
      MovieInfo(adult: adult ?? defaultBool,
          backdropPath: backdropPath ?? defaultString,
          genreIds: genreIds ?? [],
          id: id ?? defaultNum,
          originalLanguage: originalLanguage ?? defaultString,
          originalTitle: originalTitle ?? defaultString,
          overview: overview ?? defaultString,
          popularity: popularity ?? defaultNum,
          posterPath: posterPath ?? defaultString,
          releaseDate: releaseDate ?? defaultString,
          title: title ?? defaultString,
          video: video ?? defaultBool,
          voteAverage: voteAverage ?? defaultNum,
          voteCount: voteCount ?? defaultNum);
}

extension MovieMapper on MovieDto {
  Movie toMovie() =>
      Movie(adult: adult ?? defaultBool,
          backdropPath: backdropPath ?? defaultString,
          belongsToCollection: belongsToCollection?.toBelongsToCollection(),
          budget: budget ?? defaultNum,
          genres: genres?.map((e) => e.toGenre()).toList() ?? [],
          homepage: homepage ?? defaultString,
          id: id ?? defaultNum,
          imdbId: imdbId ?? defaultString,
          originalLanguage: originalLanguage ?? defaultString,
          originalTitle: originalTitle ?? defaultString,
          overview: overview ?? defaultString,
          popularity: popularity ?? defaultNum,
          posterPath: posterPath ?? defaultString,
          productionCompanies: productionCompanies?.map((e) => e.toProductionCompany()).toList() ?? [],
          productionCountries: productionCountries?.map((e) => e.toProductionCountry()).toList() ?? [],
          releaseDate: releaseDate ?? defaultString,
          revenue: revenue ?? defaultNum,
          runtime: runtime ?? defaultNum,
          spokenLanguages: spokenLanguages?.map((e) => e.toSpokenLanguage()).toList() ?? [],
          status: status ?? defaultString,
          tagline: tagline ?? defaultString,
          title: title ?? defaultString,
          video: video ?? defaultBool,
          voteAverage: voteAverage ?? defaultNum,
          voteCount: voteCount ?? defaultNum);

}

extension BelongsToCollectionDtoMapper on BelongsToCollectionDto {
  BelongsToCollection toBelongsToCollection() =>
      BelongsToCollection(id: id ?? defaultNum,
          name: name ?? defaultString,
          posterPath: posterPath ?? defaultString,
          backdropPath: backdropPath ?? defaultString);
}

extension ProductionCompanyDtoMapper on ProductionCompanyDto {
  ProductionCompany toProductionCompany() =>
      ProductionCompany(
          id: id ?? defaultNum,
          logoPath: logoPath ?? defaultString,
          name: name ?? defaultString,
          originCountry: originCountry ?? defaultString);
}

extension ProductionCountryDtoMapper on ProductionCountryDto {
  ProductionCountry toProductionCountry() =>
      ProductionCountry(
          iso31661: iso31661 ?? defaultString,
          name: name ?? defaultString);
}

extension SpokenLanguageDtoMapper on SpokenLanguageDto {
  SpokenLanguage toSpokenLanguage() =>
      SpokenLanguage(englishName: englishName ?? defaultString,
          iso6391: iso6391 ?? defaultString,
          name: name ?? defaultString);
}

extension GenreDtoMapper on GenreDto {
  Genre toGenre() =>
      Genre(id: id ?? defaultNum, name: name ?? defaultString);
}