import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';

import '../data_source/movie_info_api.dart';
import '../dto/movie_info_dto.dart';
import '../model/movie_info.dart';
import 'movie_info_repository.dart';

class MovieInfoRepositoryImpl implements MovieInfoRepository {
  final MovieInfoApi _api;

  MovieInfoRepositoryImpl(this._api);

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    List<MovieInfoDto> movie = await _api.getMovieInfo();
    List<MovieInfo> movie2 = movie.map((e) => e.toMovieInfo()).toList();
    return movie2;
  }
}

void main() async {
  MovieInfoRepositoryImpl test = MovieInfoRepositoryImpl(MovieInfoApi());
  print(await test.getMovieInfoList());
}
