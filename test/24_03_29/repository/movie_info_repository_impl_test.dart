import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_29/dto/belongs_to_collection_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/genre_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/production_company_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/production_country_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';
import 'package:learn_dart_together/24_03_29/repository/impl/movie_info_repository_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mock/mock_movie_info_api_impl.dart';

void main() {
  group('MovieInfoRepositoryImpl 클래스', () {
    final movieInfoApi = MockMovieInfoApiImpl();
    final movieInfoRepository = MovieInfoRepositoryImpl(movieInfoApi);
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
    setUp(() {
      reset(movieInfoApi);
    });
    group('getMovieInfoList 메소드는', () {
      test(
          'api.getMovieInfoList를 호출하고 받은 List<MovieInfoDto>를 List<MovieInfo>로 변환해서 인스턴스를 반환한다.',
          () async {
        // Given
        when(movieInfoApi.getMovieInfoList())
            .thenAnswer((_) async => movieInfoDtoList);

        // When
        final result = await movieInfoRepository.getMovieInfoList();

        // Then
        expect(
            result
                .equals(movieInfoDtoList.map((e) => e.toMovieInfo()).toList()),
            isTrue);
      });

      test('api.getMovieInfoList를 1번 호출한다.', () async {
        // Given
        when(movieInfoApi.getMovieInfoList())
            .thenAnswer((_) async => movieInfoDtoList);

        // When
        await movieInfoRepository.getMovieInfoList();
        //
        // // Then
        verify(movieInfoApi.getMovieInfoList()).called(1);
      });
    });

    group('getMovieDetail 메소드는', () {
      test(
          'api.getMovieDetail를 호출하고 받은 MovieDetailDto를 MovieDetail로 변환해서 인스턴스를 반환한다.',
          () async {
        // Given
        when(movieInfoApi.getMovieDetail(1))
            .thenAnswer((_) async => movieDetail);

        // When
        final result = await movieInfoRepository.getMovieDetail(1);

        // Then
        expect(result, movieDetail.toMovieDetail());
      });

      test('api.getMovieDetail를 1번 호출한다.', () async {
        // Given
        when(movieInfoApi.getMovieDetail(1))
            .thenAnswer((_) async => movieDetail);

        // When
        await movieInfoRepository.getMovieDetail(1);
        //
        // // Then
        verify(movieInfoApi.getMovieDetail(1)).called(1);
      });
    });
  });
}
