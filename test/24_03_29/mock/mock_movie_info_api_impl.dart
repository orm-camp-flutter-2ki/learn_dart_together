import 'package:learn_dart_together/24_03_29/api/interface/movie_info_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
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

  @override
  Future<List<MovieInfoDto>> getMovieInfoList() async =>
      super.noSuchMethod(Invocation.getter(#getMovieInfoList),
          returnValue: movieInfoDtoList,
          returnValueForMissingStub: movieInfoDtoList);
}
