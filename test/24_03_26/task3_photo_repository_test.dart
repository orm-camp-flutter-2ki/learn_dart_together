import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_26/model_class/task3_photo.dart';
import 'package:learn_dart_together/24_03_26/repository/task3_photo_repository.dart';

void main() {
  group('PhotoRepositoryImpl 를 테스트 합니다', () {
    test('getPhotos 유효한 albumId에 대한 사진들의 list를 리턴하는가?', () async {
      final repository = PhotoRepositoryImpl();
      final albumId = 1;

      final photos = await repository.getPhotos(albumId);

      expect(photos, isA<List<Photo>>());
      expect(photos.every((photo) => photo.albumId == albumId), isTrue);
    });

    test('getPhotos는 유효하지 않은 albumId에 대한 빈 배열을 리턴하는가?', () async {
      final repository = PhotoRepositoryImpl();
      final albumId = -1;

      final photos = await repository.getPhotos(albumId);

      expect(photos, isEmpty);
    });
  });
}
