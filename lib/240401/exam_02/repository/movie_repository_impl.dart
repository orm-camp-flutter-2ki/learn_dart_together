import 'package:learn_dart_together/240401/exam_02/data_source/movie_data_source.dart';
import 'package:learn_dart_together/240401/exam_02/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/240401/exam_02/model/movie_detail.dart';

import '../result.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource _dataSource;

  MovieRepositoryImpl(this._dataSource);

  @override
  Future<Result<MovieDetail>> getMovieDetail(int id) async {
    if (id < 0) {
      return Result.error('id 에러');
    }

    try {
      final movieDetailDto = await _dataSource.getMovieDetailDto(id);

      return Result.success(movieDetailDto.toMovieDetail());
    } catch (e) {
      return Result.error('네트워크 에러');
    }
  }
}
