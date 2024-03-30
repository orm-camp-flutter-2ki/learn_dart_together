import 'package:learn_dart_together/240329_homework/dto/movieDetail_dto.dart';
import 'package:learn_dart_together/240329_homework/model/movieDetail.dart';

extension MovieDetailDtoToMovieDetail on MovieDetailDto {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      adult: adult ?? false,
      backdropPath: backdropPath ?? 'backdropPath',
      belongsToCollection: BelongsToCollectionDto().toBelongsToCollection(),
      budget: budget ?? 0,
      genres: genres != null
          ? genres!.map((e) => e.toGenres()).toList()
          : <Genres>[],
      homepage: homepage ?? '',
      id: id ?? 0,
      imdbId: imdbId ?? '',
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? '',
      productionCompanies: productionCompanies != null
          ? productionCompanies!.map((e) => e.toProductionCompanies()).toList()
          : <ProductionCompanies>[],
      productionCountries: productionCountries != null
          ? productionCountries!.map((e) => e.toProductionCountries()).toList()
          : <ProductionCountries>[],
      releaseDate: releaseDate ?? '',
      revenue: revenue ?? 0,
      runtime: runtime ?? 0,
      spokenLanguages: spokenLanguages != null
          ? spokenLanguages!.map((e) => e.toSpokenLanguages()).toList()
          : <SpokenLanguages>[],
      status: status ?? '',
      tagline: tagline ?? '',
      title: title ?? '',
      video: video ?? false,
      voteAverage: voteAverage ?? 0,
      voteCount: voteCount ?? 0,
    );
  }
}

extension GenresDtoToGenres on GenresDto {
  Genres toGenres() {
    return Genres(
      id: id ?? 0,
      name: name ?? '',
    );
  }
}

extension ProductionCompaniesDtoToProductionCompanies
    on ProductionCompaniesDto {
  ProductionCompanies toProductionCompanies() {
    return ProductionCompanies(
      id: id ?? 0,
      logoPath: logoPath ?? '',
      name: name ?? '',
      originCountry: originCountry ?? '',
    );
  }
}

extension ProductionCountriesDtoToProductionCountries
    on ProductionCountriesDto {
  ProductionCountries toProductionCountries() {
    return ProductionCountries(
      iso31661: iso31661 ?? '',
      name: name ?? '',
    );
  }
}

extension SpokenLanguagesDtoToSpokenLanguages on SpokenLanguagesDto {
  SpokenLanguages toSpokenLanguages() {
    return SpokenLanguages(
      englishName: englishName ?? '',
      iso6391: iso6391 ?? '',
      name: name ?? '',
    );
  }
}

extension TobelongsToCollection on BelongsToCollectionDto {
  BelongsToCollection toBelongsToCollection() {
    return BelongsToCollection(
      id: id ?? 0,
      name: name ?? '',
      posterPath: posterPath ?? '',
      backdropPath: backdropPath ?? '',
    );
  }
}
