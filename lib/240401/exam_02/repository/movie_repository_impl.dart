import 'package:learn_dart_together/240401/exam_02/data_source/movie_data_source.dart';
import 'package:learn_dart_together/240401/exam_02/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/240401/exam_02/model/movie_detail.dart';

import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource _dataSource;

  MovieRepositoryImpl(this._dataSource);

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    final movieDetailDto = await _dataSource.getMovieDetailDto(id);

    return movieDetailDto.toMovieDetail();
  }
}
