import '../../24_03_21/02_api.dart';
import '../../24_03_28/data_source/mask_api.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();

}


