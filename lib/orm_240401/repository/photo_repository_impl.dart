import 'package:learn_dart_together/orm_240401/dto/photo_respone.dart';
import 'package:learn_dart_together/orm_240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/orm_240401/repository/photo_repository.dart';

import '../data_resource/photo_api_impl.dart';
import '../model/photo.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApiImpl _api;

  const PhotoRepositoryImpl(this._api);

  @override
  Future<PhotoRespone<List<Photo>>> getPhoto(String query) async {
    try {
      final photos = await _api.getPhotosApi(query);
      if (query == '바보') return PhotoRespone.error('비속어를 사용할 수 없습니다');
      return PhotoRespone.success(photos.map((e) => e.toPhotos()).toList());
    } catch (error) {
      return PhotoRespone.error('알 수 없는 네트워크 에러');
    }
  }
}
