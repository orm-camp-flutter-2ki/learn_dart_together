import '../mapper/photo_mapper.dart';
import '../model/photo.dart';
import '../data_source/photo_data_source.dart';
import '../dto/photo_dto.dart';
import 'photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _dataSource;

  PhotoRepositoryImpl(this._dataSource);

  // @override
  Future<List<Photo>> getPhotos(String query) async {
    if (query != null) {
      final List<PhotoDto> photoDtoList = await _dataSource.getPhotos(query);
      return photoDtoList.map((e) => e.toPhoto()).toList();
    } else {
      throw Exception('에러');
    }
  }
}