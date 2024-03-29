import 'package:learn_dart_together/240329_0/dto/photo_dto.dart';

abstract interface class PhotoApi {
  Future<List<PhotoDto>> getPhotoDtoList();
}
