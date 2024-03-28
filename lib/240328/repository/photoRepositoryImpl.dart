import 'package:learn_dart_together/240328/dto/user_dto.dart';
import 'package:learn_dart_together/240328/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240328/mapper/user_mapper.dart';
import 'package:learn_dart_together/240328/model/photo.dart';
import 'package:learn_dart_together/240328/model/photo.dart';
import 'package:learn_dart_together/240328/model/user.dart';
import 'package:learn_dart_together/240328/repository/photoRepository.dart';

import '../../240328/repository/userRepository.dart';
import '../data_source/mockPhotoApi.dart';
import '../data_source/user_api.dart';
import '../dto/photo_dto.dart';
import 'maskRepository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  @override
  Future<List<Photo>> getPhotos() async {
    MockPhotoApi mockPhotoApi = MockPhotoApi();
    final List<PhotoDto> photoDtos = await mockPhotoApi.getPhoto();
    final List<Photo> photo = photoDtos.map((dto) => dto.toPhoto()).toList();

    return photo;
  }
}
