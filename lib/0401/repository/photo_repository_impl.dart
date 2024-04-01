import 'package:learn_dart_together/0401/data_source/photo_api_impl.dart';
import 'package:learn_dart_together/0401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/0401/model/photo.dart';
import 'package:learn_dart_together/0401/repository/photo_repository.dart';

import '../result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApiImpl _api;

  const PhotoRepositoryImpl(this._api);

  @override
  Future<Result<List<Photo>>> getPhoto(String query) async {
    try {
      final photos = await _api.getPhotosApi(query);
      return Result.success(photos.map((e) => e.toPhotos()).toList());
    } catch (error) {
      return Result.error('$error');
    }
  }
}

void main() async {
  final PhotoRepository photo = PhotoRepositoryImpl(PhotoApiImpl());
  final result = await photo.getPhoto('yellow+flowers');

  // 실드클래스
  switch (result) {
    case Success<List<Photo>>():
      print(result.data);
    case Error<List<Photo>>():
      print(result.error);
  }



  // photos.forEach((print));
}
