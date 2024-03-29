import 'package:learn_dart_together/240328/data_source/mock_photo_api.dart';
import 'package:learn_dart_together/240328/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240328/model/photo.dart';
import 'package:learn_dart_together/240328/repository/mock_photo_repository.dart';

class MockPhotoRepositoryImpl implements MockPhotoRepository {

  final MockPhotoApi _api;

  MockPhotoRepositoryImpl({MockPhotoApi? api}) : _api = api ?? MockPhotoApi();

  @override
  List<Photo> getPhotos(String mockData) {
    final photoDtoList = _api.getPhotos(mockData);
    final photos = photoDtoList.map((e) => e.toPhoto()).toList();

    return photos;
  }

}