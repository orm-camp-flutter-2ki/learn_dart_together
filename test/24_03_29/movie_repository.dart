import 'package:learn_dart_together/24_03_29/datasource/movie_api.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/repository/mask_repository.dart';
import 'package:test/test.dart';

void main() {
  group('MovieRepository 인터페이스의', () {
    group('구현체 MovieRepositoryImpl 클래스의', () {
      final MovieRepository repository = MovieRepositoryImpl(MovieApiImpl());

      // Future<List<MovieInfo>> getMovieInfoList() async
      test('getMovieInfoList()는 서버에 요청한 json을 List<MovieInfo>로 반환한다.', () async {
        // Given
        final expectedTitle = '쿵푸팬더 4';
        
        // When
        final List<MovieInfo> result = await repository.getMovieInfoList();

        // Then
        expect(result.first.title == expectedTitle, isTrue);
      });

      // Future<Movie?> getMovie(int id) async
      test('getMovie(int id)는 서버에 요청한 json을 Movie로 반환한다.', () async {
        // Given
        final id = 1011985;
        final expectedName = '쿵푸팬더 4';

        // When
        final Movie? result = await repository.getMovie(id);

        // Then
        expect(result!.title == expectedName, isTrue);
      });
    });
  });
}
