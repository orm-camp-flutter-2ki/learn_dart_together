import 'package:learn_dart_together/24_03_29/api/interface/movie_info_api.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/repository/interface/movie_info_repository.dart';

class MovieInfoRepositoryImpl implements MovieInfoRepository {
  final MovieInfoApi _movieInfoApi;

  MovieInfoRepositoryImpl(this._movieInfoApi);

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    final movieInfoDtoList = await _movieInfoApi.getMovieInfoList();

    return movieInfoDtoList.map((e) => e.toMovieInfo()).toList();
  }
}
