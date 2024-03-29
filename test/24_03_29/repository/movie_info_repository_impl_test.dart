import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
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
  });
}
