import 'package:learn_dart_together/0326/data_source/photo_repository.dart';
import 'package:learn_dart_together/0326/data_source/photo_repository_impl.dart';
import 'package:learn_dart_together/0326/model/photo.dart';
import 'package:test/test.dart';

void main() {
  test('albumId와 일치하는 모든 photo 요청', () async {
    PhotoRepository photoRepository = PhotoRepositoryImpl();
    List<Photo> photos = await photoRepository.getPhotos(100);

    expect(photos.length, 50);
  });
}