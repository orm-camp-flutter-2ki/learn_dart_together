import 'package:learn_dart_together/240328/model/photo.dart';
import 'package:learn_dart_together/240328/repository/photoRepository.dart';
import 'package:learn_dart_together/240328/repository/photoRepositoryImpl.dart';
import 'package:test/test.dart';

import 'package:learn_dart_together/240328/enum/enum_photo.dart';

void main() {
  test('practice1', () async {
    PhotoRepository userRepository = PhotoRepositoryImpl();
    List<Photo> photoList = await userRepository.getPhotos();
    expect(photoList[5].type == PhotoEnum.unknown, true);
    expect(photoList[4].type == PhotoEnum.unknown, true);
    expect(photoList[3].id == 1, true);
  });
}
