import 'dart:convert';
import 'package:untitled2/240401/data_source/photo_api.dart';
import 'package:untitled2/240401/mapper/photo_mapper.dart';
import 'package:untitled2/240401/repository/photo_repository.dart';
import '../model/photo.dart';
import 'result.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  PhotoRepositoryImpl({PhotoApi? api}) : _api = api ?? PhotoApi();

  @override
  Future<Result<List<Photo>>> findPhotosByKeyword(String keyword) async {
    final List<Photo> photos;
    try {
      if (keyword == '바보') {
        return Result.error('비속어를 사용할 수 없습니다.');
      }

      final photoDtoList = await _api.getPhotos(keyword);
      photos = photoDtoList.map((e) => e.toPhoto()).toList();
      return Result.success(photos);
    } catch(e) {
      return Result.error('알 트수 없는 네워크 에러');
    }
  }
}

Future<void> main() async {
  PhotoRepository repository = PhotoRepositoryImpl();
  final test = await repository.findPhotosByKeyword('바보');

  switch(test){
    case Success<List<Photo>>():
      print(test.data.toString());
    case Error<List<Photo>>():
      print(test.e.toString());
  }

}