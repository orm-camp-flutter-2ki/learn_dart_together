import '../../24_03_21/02_api.dart';
import '../data_source/movie_api.dart';
import '../dto/movie_dto.dart';
import 'movie_repository.dart';

class MovieRepositoryImple implements MovieRepository {
  //레파지토리 안의 필드로 api를 직접 넣어주면 계속 반복해서 써줌
  final MovieApi _api = MovieApi();


  @override
  Future<List<Movie>> getMovieInfoList() async {
    final movieDtoList = await _api.getMovies(); // MovieDto 리스트를 가져옴
    final movieList = movieDtoList.map((e) => e.toMovie())
        .toList(); // MovieDto를 Movie로 변환
    return movieList; // Movie 리스트 반환

  }}