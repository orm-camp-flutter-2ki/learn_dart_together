import 'package:learn_dart_together/24_03_29/Repository/movie_info_repository.dart';
import 'package:learn_dart_together/24_03_29/data_source/movie_info_api.dart';
import 'package:learn_dart_together/24_03_29/dto/move_info_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

class MovieInfoRepositoryImpl implements MovieInfoRepository {
  final MovieInfoApi _api;
  
  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    final List<ResultsDto> resultDto = await _api.getResultDtoList();
    final List<MovieInfo> movieInfoList = resultDto.map((e) => e.toMovieInfo()).toList();

    return movieInfoList;
  }

  const MovieInfoRepositoryImpl({
    required MovieInfoApi api,
  }) : _api = api;
}