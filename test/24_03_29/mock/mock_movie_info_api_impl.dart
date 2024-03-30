import 'package:learn_dart_together/24_03_28/dto/geo_dto.dart';
import 'package:learn_dart_together/24_03_29/api/interface/movie_info_api.dart';
import 'package:learn_dart_together/24_03_29/dto/belongs_to_collection_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/genre_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/production_company_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/production_country_dto.dart';
import 'package:mockito/mockito.dart';

class MockMovieInfoApiImpl extends Mock implements MovieInfoApi {
  final movieInfoDtoList = [
    MovieInfoDto(
      adult: false,
      backdropPath: '/backdropPath',
      genreIds: [1, 2],
      id: 1,
      originalLanguage: 'en',
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 1.0,
      posterPath: '/posterPath',
      releaseDate: '2021-01-01',
      title: 'title',
      video: false,
      voteAverage: 1.0,
      voteCount: 1,
    ),
  ];

  final movieDetail = MovieDetailDto(
    adult: false,
    backdropPath: '/backdropPath',
    belongsToCollection: BelongsToCollectionDto(
      id: 1,
      name: 'name',
      posterPath: '/posterPath',
      backdropPath: '/backdropPath',
    ),
    budget: 0,
    genres: [
      GenreDto(id: 1, name: '홍길동'),
      GenreDto(id: 2, name: '임꺽정'),
    ],
    homepage: 'homepage',
    id: 1,
    imdbId: 'imdbId',
    originalLanguage: 'en',
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1.0,
    posterPath: '/posterPath',
    productionCompanies: [
      ProductionCompanyDto(
        id: 1,
        logoPath: '/logoPath',
        name: 'name',
        originCountry: 'KR',
      )
    ],
    productionCountries: [
      ProductionCountryDto(
        iso31661: 'KR',
        name: 'name',
      )
    ],
    releaseDate: '2021-01-01',
    revenue: 0,
    runtime: 0,
    spokenLanguages: null,
    status: 'status',
    tagline: 'tagline',
    title: 'title',
    video: false,
    voteAverage: 1.0,
    voteCount: 1,
  );

  @override
  Future<List<MovieInfoDto>> getMovieInfoList() async =>
      super.noSuchMethod(Invocation.getter(#getMovieInfoList),
          returnValue: movieInfoDtoList,
          returnValueForMissingStub: movieInfoDtoList);

  @override
  Future<MovieDetailDto> getMovieDetail(int movieId) async =>
      super.noSuchMethod(Invocation.method(#getMovieDetail, [movieId]),
          returnValue: movieDetail,
          returnValueForMissingStub: movieDetail);
}
